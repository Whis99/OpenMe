import 'package:flutter/material.dart';

class Shape extends StatelessWidget {
  const Shape({Key? key, required this.index, required this.mediaCategory})
      : super(key: key);

  final List<String> mediaCategory;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              mediaCategory[index],
            ),
            fit: BoxFit.fill),
      ),
    );
  }
}
