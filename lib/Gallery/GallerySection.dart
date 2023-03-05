// Create a page for each section of the gallery
import 'package:flutter/material.dart';
import 'package:open_me/CommonDesign/BackgroundDesign.dart';
import 'package:open_me/CommonDesign/Design_Color.dart';
import '../CommonDesign/Constant.dart';

class Section extends StatelessWidget {
  const Section({Key? key, required this.text, required this.mediaListSection})
      : super(key: key);

  // Section name
  final String text;
  // Take the list of contents that will appear at the specific gallery section
  final Widget mediaListSection;
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Scaffold(
        primary: true,
        appBar: AppBar(
          title: Text(
                text,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
          backgroundColor: blue,
        ),
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildSizedBox(),
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                decoration: const BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: mediaListSection,
              ),
            )
          ],
        ),
      ),
    );
  }
}
