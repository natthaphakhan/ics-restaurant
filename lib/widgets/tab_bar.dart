import 'package:flutter/material.dart';
import 'package:ics/providers/listen_tapbar.dart';
import 'package:provider/provider.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listener = Provider.of<ListenTabBar>(context);

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () => listener.tap(),
            child: listener.isTab ? const Tab2() : const Tab1(),
          ),
          GestureDetector(
            onTap: () => listener.tap(),
            child: listener.isTab ? const Tab1() : const Tab2(),
          ),
        ],
      ),
    );
  }
}

class Tab1 extends StatelessWidget {
  const Tab1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final listener = Provider.of<ListenTabBar>(context);
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: listener.isTab
                ? []
                : [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(0, 1),
                    ),
                  ],
            borderRadius: BorderRadius.circular(30),
            color: listener.isTab
                ? const Color.fromRGBO(19, 75, 138, 1)
                : Colors.white,
          ),
          width: screenSize.width / 2,
          height: 35,
          child: Center(
            child: Text(
              'INFORMATION',
              style: TextStyle(
                color: listener.isTab ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        const Expanded(child: SizedBox())
      ],
    );
  }
}

class Tab2 extends StatelessWidget {
  const Tab2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final listener = Provider.of<ListenTabBar>(context);
    return Row(
      children: [
        const Expanded(child: SizedBox()),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(0, 1),
              ),
            ],
            borderRadius: BorderRadius.circular(30),
            color: listener.isTab
                ? Colors.white
                : const Color.fromRGBO(19, 75, 138, 1),
          ),
          width: screenSize.width / 2,
          height: 35,
          child: Center(
            child: Text(
              'IMAGE',
              style: TextStyle(
                  color: listener.isTab ? Colors.black : Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
