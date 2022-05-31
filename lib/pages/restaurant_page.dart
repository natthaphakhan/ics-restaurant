import 'package:flutter/material.dart';
import 'package:ics/providers/listen_tapbar.dart';
import 'package:ics/widgets/show_image.dart';
import 'package:ics/widgets/restaurant_detail.dart';
import 'package:ics/widgets/tab_bar.dart';
import 'package:provider/provider.dart';

class RestaurantPage extends StatelessWidget {
  const RestaurantPage({Key? key, required this.id}) : super(key: key);
  final int id;

  @override
  Widget build(BuildContext context) {
    final listener = Provider.of<ListenTabBar>(context);

    return Scaffold(
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
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    listener.resetTab();
                  },
                  child: Container(
                    width: 85,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromRGBO(19, 75, 138, 1),
                    ),
                    child: const Center(
                      child: Text(
                        '< Back',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  ),
                ),
                const Expanded(child: SizedBox())
              ],
            ),
          ),
          const TabBarWidget(),
          Expanded(
            child: SizedBox(
              child: SingleChildScrollView(
                child: listener.isTab
                    ? RestaurantDetail(
                        id: id,
                      )
                    : const ShowImage(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
