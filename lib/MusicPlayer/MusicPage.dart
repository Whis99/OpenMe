import 'package:flutter/material.dart';
import 'package:open_me/CommonDesign/BackgroundDesign.dart';

class MainMusic extends StatelessWidget {
  const MainMusic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Icon(
            Icons.music_note,
            color: Colors.purple[600],
            size: 120,
          ),
        ),
      ),
    );
  }
}
