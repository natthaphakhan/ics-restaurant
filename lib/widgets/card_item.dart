import 'package:flutter/material.dart';
import 'package:ics/pages/store_page.dart';
import 'package:ics/widgets/image_slider.dart';

class CardItem extends StatelessWidget {
  const CardItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(context,
            MaterialPageRoute(builder: ((context) => const StorePage())));
      }),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1587174147003-eb7dc051122b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzMDcxMTl8MHwxfHNlYXJjaHwyfHxzaG9wJTIwcmVzdGF1cmFudCUyMGJyZWFkfGVufDB8fHx8MTY0NjM2Nzg3Mg&ixlib=rb-1.2.1&q=80&w=1080',
                      fit: BoxFit.cover,
                      height: 85,
                      width: double.maxFinite,
                    ),
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(
                          'Cantina Wine Bar & Italian Kitchen',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(child: SizedBox())
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.calendar_month,
                        ),
                        Text(
                          '10:00 AM - 6:00 PM',
                        ),
                      ],
                    ),
                  ),
                  const ImageSlider()
                ],
              ),
            ),
          ),
          Positioned(
            top: 83,
            left: 280,
            child: Container(
              width: 65,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color.fromRGBO(19, 75, 138, 1),
              ),
              child: const Center(
                  child: Text(
                '4.5',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
