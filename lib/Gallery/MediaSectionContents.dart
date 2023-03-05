import 'package:flutter/material.dart';
import 'MediaScreen.dart';

class SectionContents extends StatelessWidget {
  const SectionContents({Key? key, required this.mediaListContents})
      : super(key: key);

  // Take as input a list of all the media contents
  final List<String> mediaListContents;
  @override
  Widget build(BuildContext context) {
    // Create a gridview for each media in the list
    return GridView.builder(
      scrollDirection: Axis.vertical,
      itemCount: mediaListContents.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (
        BuildContext context,
        int index,
      ) {
        // If media is pressed, will show it in full screen in a new page
        return RawMaterialButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MediaPage(
                    mediaListScreen: mediaListContents,
                    index: index,
                  ),
                ));
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(mediaListContents[index]),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }
}
