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
  String timeRemain = "35";
  String currentSection = "No Period";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text(
                currentHour.toString() + " : " + currentMinute.toString(),
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              child: Text(
                timeRemain,
                style: GoogleFonts.dancingScript(
                  fontWeight: FontWeight.bold,
                  fontSize: 300,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
                child: Text(
              currentSection,
              style: GoogleFonts.ubuntu(
                fontSize: 50,
                color: Colors.black,
              ),
            )),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentHour = (DateTime.now().hour % 12);
                  currentMinute = DateTime.now().minute;
                  currentSection = sectionFind(currentHour, currentMinute);
                });
              },
              child: Container(
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
          ],
        ),
      ),
    );
  }
}

String sectionFind(int currentHour, int currentMinute) {
  //First Period
  if (currentHour == 10 && currentMinute > 44 && currentMinute <= 46) {
    return "Section : 7 \"D\"";
  }
  //Break
  else if (currentHour == 10 && currentMinute > 29 && currentMinute <= 32) {
    return "Break";
  }
  //Second Period
  else if (currentHour == 10 && currentMinute > 29 && currentMinute <= 32) {
    return "Section : 7 \"D\"";
  }
  // Third Period
  else if (currentHour == 10 && currentMinute > 29 && currentMinute <= 32) {
    return "Section : 7 \"B\"";
  }
  // Lunch
  else if (currentHour == 10 && currentMinute > 29 && currentMinute <= 32) {
    return "Lunch Break";
  }
  // Fourth Period
  else if (currentHour == 10 && currentMinute > 29 && currentMinute <= 32) {
    return "Section : 7 \"B\"";
  }
  // Fifth Period
  else if (currentHour == 10 && currentMinute > 29 && currentMinute <= 32) {
    return "Section : 7 \"C\"";
  }
  //Break
  else if (currentHour == 10 && currentMinute > 29 && currentMinute <= 32) {
    return "Break";
  }
  // Sixth Period
  else if (currentHour == 10 && currentMinute > 29 && currentMinute <= 32) {
    return "Section : 7 \"C\"";
  }
  // Seventh Period
  else if (currentHour == 10 && currentMinute > 29 && currentMinute <= 32) {
    return "Section : 7 \"A\"";
  }
  // Snack
  else if (currentHour == 10 && currentMinute > 29 && currentMinute <= 32) {
    return "Snack Break";
  }
  // Eigth Period
  else if (currentHour == 10 && currentMinute > 29 && currentMinute <= 32) {
    return "Section : 7 \"A\"";
  }
  // No Period
  else {
    return "Lunch Break";
  }
}
