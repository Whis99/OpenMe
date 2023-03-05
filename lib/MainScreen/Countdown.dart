import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

import '../CommonDesign/Design_Color.dart';

class Countdown extends StatefulWidget {
  const Countdown({Key? key}) : super(key: key);

  @override
  State<Countdown> createState() => _CountdownState();
}

class _CountdownState extends State<Countdown> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Center(
          child: TimerCountdown(
            format: CountDownTimerFormat.daysHoursMinutesSeconds,
            endTime: DateTime.now().add(
              Duration(
                days: 20 - day(),
                hours: 23 - hour(),
                minutes: 59 - minute(),
                seconds: 59 - second(),
              ),
            ),
            onEnd: () {
              setState(() {
                //Todo
                // LogBtn(isvisible: true);
              });
            },
            timeTextStyle: TextStyle(
              color: blue,
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
            colonsTextStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            descriptionTextStyle: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            spacerWidth: 20,
            daysDescription: "d",
            hoursDescription: "h",
            minutesDescription: "m",
            secondsDescription: "s",
          ),
        ),
      ],
    );
  }

  int day() {
    DateTime now = DateTime.now();
    return now.day.toInt();
  }

  int hour() {
    DateTime now = DateTime.now();
    return now.hour.toInt();
  }

  int minute() {
    DateTime now = DateTime.now();
    return now.minute.toInt();
  }

  int second() {
    DateTime now = DateTime.now();
    return now.second.toInt();
  }
}
