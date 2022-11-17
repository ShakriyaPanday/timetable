import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CurrentTime extends StatefulWidget {
  const CurrentTime({super.key});

  @override
  State<CurrentTime> createState() => _CurrentTimeState();
}

class _CurrentTimeState extends State<CurrentTime> {
  int currentHour = (DateTime.now().hour % 12);
  int currentMinute = DateTime.now().minute;
  String timeRemain = "30";
  String currentSection = "No Period";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                currentHour.toString() + " : " + currentMinute.toString(),
                style: GoogleFonts.ubuntu(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                "Time Remaining",
                style: GoogleFonts.ubuntu(
                  fontWeight: FontWeight.bold,
                  fontSize: 45,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 600,
              decoration: BoxDecoration(
                color: Colors.deepOrange[300],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  timeRemain,
                  style: GoogleFonts.ubuntu(
                    fontWeight: FontWeight.bold,
                    fontSize: 300,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
                child: Text(
              currentSection,
              style: GoogleFonts.ubuntu(
                fontSize: 50,
                color: Colors.black,
              ),
            )),
            SizedBox(
              height: 55,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentHour = (DateTime.now().hour % 12);
                  currentMinute = DateTime.now().minute;
                  timeRemain = timeRemains(currentHour, currentMinute);
                  currentSection = sectionFind(currentHour, currentMinute);
                });
              },
              child: Container(
                width: double.infinity,
                child: Center(
                  child: Text(
                    "Designed by Shakriya Panday",
                    style: GoogleFonts.oswald(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String timeRemains(int currentHour, int currentMinute) {
  //First Period
  if (currentHour == 11 && currentMinute > 40 && currentMinute <= 50) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 11, 50)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }
  //Break
  else if (currentHour == 12 && currentMinute > 22 && currentMinute <= 30) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 11, 45)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }
  //Second Period
  else if (currentHour == 10 && currentMinute > 29 && currentMinute <= 32) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 11, 45)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }
  // Third Period
  else if (currentHour == 10 && currentMinute > 29 && currentMinute <= 32) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 11, 45)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }
  // Lunch
  else if (currentHour == 10 && currentMinute > 29 && currentMinute <= 32) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 11, 45)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }
  // Fourth Period
  else if (currentHour == 10 && currentMinute > 29 && currentMinute <= 32) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 11, 45)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }
  // Fifth Period
  else if (currentHour == 10 && currentMinute > 29 && currentMinute <= 32) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 11, 45)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }
  //Break
  else if (currentHour == 10 && currentMinute > 29 && currentMinute <= 32) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 11, 45)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }
  // Sixth Period
  else if (currentHour == 10 && currentMinute > 29 && currentMinute <= 32) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 11, 45)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }
  // Seventh Period
  else if (currentHour == 10 && currentMinute > 29 && currentMinute <= 32) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 11, 45)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }
  // Snack
  else if (currentHour == 10 && currentMinute > 29 && currentMinute <= 32) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 11, 45)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }
  // Eigth Period
  else if (currentHour == 10 && currentMinute > 29 && currentMinute <= 32) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 11, 45)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }
  // No Period
  else {
    return "0";
  }
}

String sectionFind(int currentHour, int currentMinute) {
  //First Period
  if (currentHour == 11 && currentMinute > 22 && currentMinute <= 28) {
    return "7 \"D\"";
  }
  //Break
  else if (currentHour == 12 && currentMinute > 22 && currentMinute <= 30) {
    return "Break";
  }
  //Second Period
  else if (currentHour == 10 && currentMinute > 29 && currentMinute <= 32) {
    return "7 \"D\"";
  }
  // Third Period
  else if (currentHour == 10 && currentMinute > 29 && currentMinute <= 32) {
    return "7 \"B\"";
  }
  // Lunch
  else if (currentHour == 10 && currentMinute > 29 && currentMinute <= 32) {
    return "Lunch Break";
  }
  // Fourth Period
  else if (currentHour == 10 && currentMinute > 29 && currentMinute <= 32) {
    return "7 \"B\"";
  }
  // Fifth Period
  else if (currentHour == 10 && currentMinute > 29 && currentMinute <= 32) {
    return "7 \"C\"";
  }
  //Break
  else if (currentHour == 10 && currentMinute > 29 && currentMinute <= 32) {
    return "Break";
  }
  // Sixth Period
  else if (currentHour == 10 && currentMinute > 29 && currentMinute <= 32) {
    return "7 \"C\"";
  }
  // Seventh Period
  else if (currentHour == 10 && currentMinute > 29 && currentMinute <= 32) {
    return "7 \"A\"";
  }
  // Snack
  else if (currentHour == 10 && currentMinute > 29 && currentMinute <= 32) {
    return "Snack Break";
  }
  // Eigth Period
  else if (currentHour == 10 && currentMinute > 29 && currentMinute <= 32) {
    return "7 \"A\"";
  }
  // No Period
  else {
    return "No Period";
  }
}
