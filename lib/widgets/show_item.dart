import 'package:flutter/material.dart';
import 'package:ics/pages/restaurant_page.dart';
import 'package:ics/widgets/image_slider.dart';

class ShowItem extends StatelessWidget {
  const ShowItem(
      {Key? key,
      required this.name,
      required this.profileImageUrl,
      required this.images,
      required this.rating,
      required this.timeOpen,
      required this.timeClose,
      required this.id})
      : super(key: key);
  final int id;
  final String name;
  final String profileImageUrl;
  final List<String> images;
  final double rating;
  final String timeOpen;
  final String timeClose;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(context,
            MaterialPageRoute(builder: ((context) =>  RestaurantPage(id: id,))));
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
                      profileImageUrl,
                      fit: BoxFit.cover,
                      height: 85,
                      width: double.maxFinite,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Expanded(child: SizedBox())
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.calendar_month,
                        ),
                        Text(
                          '$timeOpen - $timeClose',
                        ),
                      ],
                    ),
                  ),
                  ImageSlider(
                    images: images,
                  )
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
              child: Center(
                  child: Text(
                rating.toString(),
                style: const TextStyle(
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
