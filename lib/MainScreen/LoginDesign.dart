import 'package:flutter/material.dart';
import 'package:open_me/CommonDesign/Design_Color.dart';
import 'package:open_me/MainScreen/Countdown.dart';
import 'Login_panel.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "images/photos/pic2.jpg",
          ),
          fit: BoxFit.fill,
          opacity: 0.9,
          alignment: Alignment.center,
          repeat: ImageRepeat.noRepeat,
        ),
      ),
      child: Scaffold(
        backgroundColor: transparent,
        extendBody: true,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                margin: const EdgeInsets.all(15.0),
                decoration: const BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.all(
                    Radius.circular(40.0),
                  ),
                ),
                child: Column(
                  children: [
                    const Countdown(),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Login(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
