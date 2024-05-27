import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:apple/data/demo_data.dart';

class mainSlider extends StatelessWidget {
  const mainSlider({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(aspectRatio: 15 / 8, autoPlay: true),
      items: demoData.sliderImgs.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                width: size.width,
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(i))),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
