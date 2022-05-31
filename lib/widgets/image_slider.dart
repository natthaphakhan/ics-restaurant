import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({Key? key, required this.images}) : super(key: key);
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final carouselController = CarouselController();
    final list = images;

    return CarouselSlider(
      carouselController: carouselController,
      options: CarouselOptions(
        autoPlay: false,
        viewportFraction: 1,
      ),
      items: list.map((img) {
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              img,
              height: 175,
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),
          ),
        );
      }).toList(),
    );
  }
}
