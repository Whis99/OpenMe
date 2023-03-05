import 'package:flutter/material.dart';
import 'package:open_me/CommonDesign/BackgroundDesign.dart';
import 'package:open_me/SpecialSection/SpecialMessage.dart';

import '../CommonDesign/Design_Color.dart';

class MainSpecial extends StatelessWidget {
  const MainSpecial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: blue,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Expanded(
              flex: 1,
              child: Center(
                child: Image(
                  image: AssetImage("images/gif/neko5.gif"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: ListView(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "OHAYO GOSAIMASUU>~<",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic,
                            color: blue,
                          ),
                        ),
                        Text(
                          text_message,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                            color: blue,
                          ),
                        ),
                        const Center(
                          child: Image(
                            image: AssetImage("images/gif/neko3.gif"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
