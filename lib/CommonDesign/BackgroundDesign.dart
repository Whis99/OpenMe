import 'package:flutter/material.dart';
import 'package:open_me/CommonDesign/Design_Color.dart';

class Background extends StatelessWidget {
  const Background({Key? key, required this.child}) : super(key: key);

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: gradient_blue,
        ),
      ),
      child: child,
    );
  }
}
