import 'dart:math';

import 'package:flutter/material.dart';

class CurrentTime extends StatefulWidget {
  const CurrentTime({super.key});

  @override
  State<CurrentTime> createState() => _CurrentTimeState();
}

class _CurrentTimeState extends State<CurrentTime> {
  int currentHour = (DateTime.now().hour % 12);
  int currentMinute = DateTime.now().minute;
  String timeRemain = "No Class";
  String currentSection = "7 D";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Text(
                  currentHour.toString() + " : " + currentMinute.toString()),
            ),
            Container(child: Text(currentSection)),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentHour = (DateTime.now().hour % 12);
                  currentMinute = DateTime.now().minute;
                  currentSection = calculateTime(currentHour, currentMinute);
                });
              },
              child: Container(
                child: Text("Designed by Shakriya Panday"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String calculateTime(int currentHour, int currentMinute) {
  //First Period
  if (currentHour == 10 && currentMinute >= 44 && currentMinute <= 46) {
    return "Section : 7 \"D\"";
  }
  //Break
  else if (currentHour == 10 && currentMinute >= 29 && currentMinute <= 32) {
    return "Break";
  }
  //Second Period
  else if (currentHour == 10 && currentMinute >= 29 && currentMinute <= 32) {
    return "Section : 7 \"D\"";
  }
  // Third Period
  else if (currentHour == 10 && currentMinute >= 29 && currentMinute <= 32) {
    return "Section : 7 \"B\"";
  }
  // Lunch
  else if (currentHour == 10 && currentMinute >= 29 && currentMinute <= 32) {
    return "Lunch Break";
  }
  // Fourth Period
  else if (currentHour == 10 && currentMinute >= 29 && currentMinute <= 32) {
    return "Section : 7 \"B\"";
  }
  // Fifth Period
  else if (currentHour == 10 && currentMinute >= 29 && currentMinute <= 32) {
    return "Section : 7 \"C\"";
  }
  //Break
  else if (currentHour == 10 && currentMinute >= 29 && currentMinute <= 32) {
    return "Break";
  }
  // Sixth Period
  else if (currentHour == 10 && currentMinute >= 29 && currentMinute <= 32) {
    return "Section : 7 \"C\"";
  }
  // Seventh Period
  else if (currentHour == 10 && currentMinute >= 29 && currentMinute <= 32) {
    return "Section : 7 \"A\"";
  }
  // Snack
  else if (currentHour == 10 && currentMinute >= 29 && currentMinute <= 32) {
    return "Snack Break";
  }
  // Eigth Period
  else if (currentHour == 10 && currentMinute >= 29 && currentMinute <= 32) {
    return "Section : 7 \"A\"";
  }
  // No Period
  else {
    return "No Period";
  }
}
