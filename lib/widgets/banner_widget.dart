import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../datas/carousel_Items_data.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({super.key});

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  int currentCarouselIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
            items: carouselItems
                .map((e) => Image.asset(
                      e,
                      fit: BoxFit.cover,
                      width: double.maxFinite,
                    ))
                .toList(),
            options: CarouselOptions(
                height: 221,
                aspectRatio: 16 / 9,
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.easeInOut,
                enlargeCenterPage: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentCarouselIndex = index;
                  });
                })),
        Positioned(
          bottom: 10,
          right: 0,
          left: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                carouselItems.length,
                (index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 2.5),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(
                      index == currentCarouselIndex ? 1 : 0.5,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  width: index == currentCarouselIndex ? 9 : 4,
                  height: 4,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
