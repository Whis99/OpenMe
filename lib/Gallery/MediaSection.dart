// GallerySection shows each media section of the gallery and when
// section is clicked, redirects user to their respective page.

import 'package:flutter/material.dart';

class GallerySection extends StatelessWidget {
  const GallerySection({Key? key, required this.img, required this.route})
      : super(key: key);

  final String img;
  final Widget route;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => route));
      },
      child: Container(
        height: 250,
        margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(img),
            fit: BoxFit.cover,
          ),
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
      ),
    );
  }
}
