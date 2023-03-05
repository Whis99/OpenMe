import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:open_me/Gallery/GalleryMediaFile.dart';

class ImgCarousel extends StatelessWidget {
  const ImgCarousel({Key? key}) : super(key: key);

  final int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      decoration: const BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.all(
          Radius.circular(17.0),
        ),
      ),
      child: Column(
        children: [
          CarouselSlider.builder(
            itemCount: carouselList.length,
            options: CarouselOptions(
              height: 250,
              aspectRatio: 10 / 9,
              viewportFraction: 0.6,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              // onPageChanged: (index, reason) =>
              //     setState(() => activeIndex = index),
              scrollDirection: Axis.horizontal,
            ),
            itemBuilder: (context, index, realIndex) {
              final urlImage = carouselList[index];

              return buildImage(urlImage, index);
            },
          ),
          // indicator(),
        ],
      ),
    );
  }

  Widget buildImage(String urlImage, int index) {
    return Image.asset(
      urlImage,
      fit: BoxFit.cover,
    );
  }
}
