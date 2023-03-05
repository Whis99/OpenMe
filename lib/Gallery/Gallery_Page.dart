import 'package:flutter/material.dart';
import 'package:open_me/CommonDesign/BackgroundDesign.dart';
import 'package:open_me/CommonDesign/Design_Color.dart';
import 'package:open_me/Gallery/MediaSection.dart';
import 'package:open_me/Gallery/GallerySection.dart';
import 'package:open_me/Gallery/GalleryMediaFile.dart';
import 'ImageCarousel.dart';
import 'MediaSectionContents.dart';

class MainGallery extends StatefulWidget {
  const MainGallery({Key? key}) : super(key: key);

  @override
  State<MainGallery> createState() => _MainGalleryState();
}

class _MainGalleryState extends State<MainGallery> {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: blue,
          title: const Text(
            "Gallery",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  const ImgCarousel(),
                  buildSizedBox(),
                  const TextCategory(text: "Photos"),
                  GallerySection(
                    img: "images/photos/pic1.jpg",
                    route: Section(
                      text: "Photos",
                      mediaListSection: SectionContents(
                        mediaListContents: listofphotos,
                      ),
                    ),
                  ),
                  const TextCategory(text: "Memories"),
                  GallerySection(
                    img: "images/memories/01.jpg",
                    route: Section(
                      text: "Memories",
                      mediaListSection: SectionContents(
                        mediaListContents: listofmemo,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  SizedBox buildSizedBox() {
    return const SizedBox(
      height: 20,
    );
  }
}

class TextCategory extends StatelessWidget {
  const TextCategory({Key? key, required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
      ),
    );
  }
}
