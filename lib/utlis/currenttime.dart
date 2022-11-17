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
            GestureDetector(
              onTap: () {
                setState(() {
                  currentHour = (DateTime.now().hour % 12);
                  currentMinute = DateTime.now().minute;
                  timeRemain = calculateTime(currentHour, currentMinute);
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
  if (currentHour == 10 && currentMinute >= 26 && currentMinute <= 28) {
    return "Class 1";
  }
  //Break
  else if (currentHour == 10 && currentMinute >= 29 && currentMinute <= 32) {
    return "Class 2";
  }
  //Second Period
  else if (currentHour == 10 && currentMinute >= 29 && currentMinute <= 32) {
    return "Class 2";
  }
  // Third Period
  else if (currentHour == 10 && currentMinute >= 29 && currentMinute <= 32) {
    return "Class 2";
  }
  // Lunch
  else if (currentHour == 10 && currentMinute >= 29 && currentMinute <= 32) {
    return "Class 2";
  }
  // Fourth Period
  else if (currentHour == 10 && currentMinute >= 29 && currentMinute <= 32) {
    return "Class 2";
  }
  // Fifth Period
  else if (currentHour == 10 && currentMinute >= 29 && currentMinute <= 32) {
    return "Class 2";
  }
  //Break
  else if (currentHour == 10 && currentMinute >= 29 && currentMinute <= 32) {
    return "Class 2";
  }
  // Sixth Period
  else if (currentHour == 10 && currentMinute >= 29 && currentMinute <= 32) {
    return "Class 2";
  }
  // Seventh Period
  else if (currentHour == 10 && currentMinute >= 29 && currentMinute <= 32) {
    return "Class 2";
  }
  // Snack
  else if (currentHour == 10 && currentMinute >= 29 && currentMinute <= 32) {
    return "Class 2";
  }
  // Eigth Period
  else if (currentHour == 10 && currentMinute >= 29 && currentMinute <= 32) {
    return "Class 2";
  }
  // No Period
  else {
    return "No Class";
  }
}
