//This file shows any media clicked in full screen and will allow the user to scroll down to the next media
import 'package:flutter/material.dart';
import '../CommonDesign/MediaShape.dart';

class MediaPage extends StatelessWidget {
  MediaPage({Key? key, required this.index, required this.mediaListScreen})
      : super(key: key);
  int index;
  List<String> mediaListScreen;
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // PageView widget to scroll all the images from the multiShape list function on the screen.
      body: PageView(
        scrollDirection: Axis.vertical,
        pageSnapping: true,
        allowImplicitScrolling: true,
        controller: controller,
        children: multiShape(),
      ),
    );
  }

  // Shows the image related index on the screen
  List<Widget> multiShape() {
    List<Widget> shapeList = [];
    int shapeIndex = mediaListScreen.length;
    for (int i = index; i < shapeIndex; i += 1) {
      shapeList.add(Shape(mediaCategory: mediaListScreen, index: i));
    }
    return shapeList;
  }
}
