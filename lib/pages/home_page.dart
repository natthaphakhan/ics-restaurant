import 'package:flutter/material.dart';
import 'package:ics/widgets/card_item.dart';
import 'package:ics/widgets/search_form.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: ((context, index) {
                    return const CardItem();
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
