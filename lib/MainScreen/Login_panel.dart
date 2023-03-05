// Panel containing the countdown and secret password field
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:open_me/SecondaryPage.dart';
import 'package:open_me/CommonDesign/Design_Color.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String user_input = '';
  String password = 'admin123';
  TextEditingController textArea = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          TextField(
            controller: textArea,
            onChanged: (value) {
              user_input = value;
              print(user_input);
            },
            obscureText: true,
            obscuringCharacter: '*',
            decoration: InputDecoration(
              filled: true,
              fillColor: white,
              icon: Icon(
                Icons.key,
                color: blue,
              ),
              hintText: "*******",
              hintStyle: const TextStyle(
                color: Colors.grey,
              ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                ),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                if (user_input == password) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Homepage()));
                  textArea.clear();
                } else {
                  textArea.clear();
                }
              });
            },
            child: Container(
              height: 50.0,
              margin: const EdgeInsets.symmetric(horizontal: 110),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: blue,
                  borderRadius: BorderRadius.circular(20.0)),
              child: const Icon(
                Icons.arrow_forward,
                color: Colors.black,
                size: 38.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
