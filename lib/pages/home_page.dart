import 'package:flutter/material.dart';
import 'package:ics/providers/restaurant_data_provider.dart';
import 'package:ics/widgets/show_item.dart';
import 'package:ics/widgets/search_form.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final currentDay = DateFormat('EEEE').format(DateTime.now());
  Future? fetchDataFuture;

  @override
  void initState() {
    fetchDataFuture = Provider.of<RestaurantDataProvider>(context, listen: false).fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final provider =
        Provider.of<RestaurantDataProvider>(context);

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(19, 75, 138, 1),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset('assets/image/logo.png')),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/image/user_image.png'),
            )
          ],
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: const [
                  Text(
                    'Place List',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Expanded(child: SizedBox()),
                ],
              ),
            ),
            const SearchForm(),
            Expanded(
              child: SizedBox(
                child: FutureBuilder(
                  future: fetchDataFuture,
                  builder:
                      (BuildContext context, AsyncSnapshot<dynamic> snapshot) =>
                          snapshot.connectionState == ConnectionState.waiting
                              ? const Center(
                                  child: CircularProgressIndicator(),
                                )
                              : ListView.builder(
                                  itemCount: provider.list.length,
                                  itemBuilder: ((context, i) {
                                    final time = provider.list[i].operationTime!
                                        .where((time) => time.day == currentDay)
                                        .toList();
                                    return ShowItem(
                                      id: provider.list[i].id!,
                                      name: provider.list[i].name!,
                                      profileImageUrl:
                                          provider.list[i].profileImageUrl!,
                                      images: provider.list[i].images!,
                                      rating: provider.list[i].rating!,
                                      timeClose: time[0].timeClose!,
                                      timeOpen: time[0].timeOpen!,
                                    );
                                  }),
                                ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
