import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class CurrentTime extends StatefulWidget {
  const CurrentTime({super.key});

  @override
  State<CurrentTime> createState() => _CurrentTimeState();
}

class _CurrentTimeState extends State<CurrentTime> {
  String time = DateFormat.jm().format(DateTime.now()).toString();
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
            const SizedBox(
              height: 20,
            ),
            Text(
              time,
              style: GoogleFonts.ubuntu(
                fontWeight: FontWeight.bold,
                fontSize: 70,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 70,
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
            const SizedBox(
              height: 70,
            ),
            Text(
              currentSection,
              style: GoogleFonts.ubuntu(
                fontSize: 50,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 55,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  time = DateFormat.jm().format(DateTime.now()).toString();
                  currentHour = (DateTime.now().hour % 12);
                  currentMinute = DateTime.now().minute;
                  timeRemain = timeRemains(currentHour, currentMinute);
                  currentSection = sectionFind(currentHour, currentMinute);
                });
              },
              child: SizedBox(
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
  if ((currentHour == 11 && currentMinute > 40) &&
      (currentHour == 11 && currentMinute > 40)) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 11, 50)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }
  //Break
  else if ((currentHour == 11 && currentMinute > 40) &&
      (currentHour == 11 && currentMinute > 40)) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 11, 45)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }
  //Second Period
  else if ((currentHour == 11 && currentMinute > 40) &&
      (currentHour == 11 && currentMinute > 40)) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 11, 45)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }
  // Third Period
  else if ((currentHour == 11 && currentMinute > 40) &&
      (currentHour == 11 && currentMinute > 40)) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 11, 45)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }
  // Lunch
  else if ((currentHour == 11 && currentMinute > 40) &&
      (currentHour == 11 && currentMinute > 40)) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 11, 45)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }
  // Fourth Period
  else if ((currentHour == 11 && currentMinute > 40) &&
      (currentHour == 11 && currentMinute > 40)) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 11, 45)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }
  // Fifth Period
  else if ((currentHour == 11 && currentMinute > 40) &&
      (currentHour == 11 && currentMinute > 40)) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 11, 45)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }
  //Break
  else if ((currentHour == 11 && currentMinute > 40) &&
      (currentHour == 11 && currentMinute > 40)) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 11, 45)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }
  // Sixth Period
  else if ((currentHour == 11 && currentMinute > 40) &&
      (currentHour == 11 && currentMinute > 40)) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 11, 45)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }
  // Seventh Period
  else if ((currentHour == 11 && currentMinute > 40) &&
      (currentHour == 11 && currentMinute > 40)) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 11, 45)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }
  // Snack
  else if ((currentHour == 11 && currentMinute > 40) &&
      (currentHour == 11 && currentMinute > 40)) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 11, 45)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }
  // Eigth Period
  else if ((currentHour == 11 && currentMinute > 40) &&
      (currentHour == 11 && currentMinute > 40)) {
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
  if ((currentHour == 11 && currentMinute > 40) &&
      (currentHour == 11 && currentMinute > 40)) {
    return "7 \"D\"";
  }
  //Break
  else if ((currentHour == 11 && currentMinute > 40) &&
      (currentHour == 11 && currentMinute > 40)) {
    return "Break";
  }
  //Second Period
  else if ((currentHour == 11 && currentMinute > 40) &&
      (currentHour == 11 && currentMinute > 40)) {
    return "7 \"D\"";
  }
  // Third Period
  else if ((currentHour == 11 && currentMinute > 40) &&
      (currentHour == 11 && currentMinute > 40)) {
    return "7 \"B\"";
  }
  // Lunch
  else if ((currentHour == 11 && currentMinute > 40) &&
      (currentHour == 11 && currentMinute > 40)) {
    return "Lunch Break";
  }
  // Fourth Period
  else if ((currentHour == 11 && currentMinute > 40) &&
      (currentHour == 11 && currentMinute > 40)) {
    return "7 \"B\"";
  }
  // Fifth Period
  else if ((currentHour == 11 && currentMinute > 40) &&
      (currentHour == 11 && currentMinute > 40)) {
    return "7 \"C\"";
  }
  //Break
  else if ((currentHour == 11 && currentMinute > 40) &&
      (currentHour == 11 && currentMinute > 40)) {
    return "Break";
  }
  // Sixth Period
  else if ((currentHour == 11 && currentMinute > 40) &&
      (currentHour == 11 && currentMinute > 40)) {
    return "7 \"C\"";
  }
  // Seventh Period
  else if ((currentHour == 11 && currentMinute > 40) &&
      (currentHour == 11 && currentMinute > 40)) {
    return "7 \"A\"";
  }
  // Snack
  else if ((currentHour == 11 && currentMinute > 40) &&
      (currentHour == 11 && currentMinute > 40)) {
    return "Snack Break";
  }
  // Eigth Period
  else if ((currentHour == 11 && currentMinute > 40) &&
      (currentHour == 11 && currentMinute > 40)) {
    return "7 \"A\"";
  }
  // No Period
  else {
    return "No Period";
  }
}
