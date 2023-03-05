import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:open_me/SpecialSection/SpecialPage.dart';
import 'CommonDesign/Design_Color.dart';
import 'Gallery/Gallery_Page.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int index = 0;
  final page = [
    // MainMusic(),
    MainGallery(),
    MainSpecial(),
  ];
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      // Icon(
      //   Icons.library_music_outlined,
      //   size: 30,
      //   color: Colors.purple[900],
      // ),
      Icon(
        Icons.image_rounded,
        size: 30,
        color: black,
      ),
      Icon(
        Icons.favorite,
        size: 30,
        color: black,
      ),
    ];

    return Container(
      // color: Colors.white,
      child: Scaffold(
            extendBody: true,
            body: page[index],
            bottomNavigationBar: CurvedNavigationBar(
              color: blue,
              // backgroundColor: Colors.transparent,
              animationCurve: Curves.easeInOutCirc,
              animationDuration: const Duration(milliseconds: 500),
              height: 50,
              index: index,
              items: items,
              onTap: (index) => setState(() => this.index = index),
            ),
          ),
        
    );
  }
}
