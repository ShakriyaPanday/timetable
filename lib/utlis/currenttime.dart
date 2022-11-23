import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class CurrentTime extends StatefulWidget {
  const CurrentTime({super.key});

  @override
  State<CurrentTime> createState() => _CurrentTimeState();
}

class _CurrentTimeState extends State<CurrentTime> {
  String time = DateFormat.E().format(DateTime.now()).toString();
  @override
  Widget build(BuildContext context) {
    return time == 'Wed' ? const Period() : const NoClass();
  }
}

class Period extends StatefulWidget {
  const Period({super.key});

  @override
  State<Period> createState() => _PeriodState();
}

class _PeriodState extends State<Period> {
  String time = DateFormat.jm().format(DateTime.now()).toString();
  int currentHour = (DateTime.now().hour);
  int currentMinute = DateTime.now().minute;
  String timeRemain = "";
  String currentSection = "No Period";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 1,
            ),
            Text(
              time,
              style: GoogleFonts.oswald(
                fontWeight: FontWeight.bold,
                fontSize: 70,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
                width: 600,
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                decoration: BoxDecoration(
                  color: Colors.deepOrange[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: timeRemain == 'No'
                    ? Center(
                        child: Text(
                          "\n\nClass Over\n\n",
                          style: GoogleFonts.ubuntu(
                            fontWeight: FontWeight.bold,
                            fontSize: 60,
                            color: Colors.white,
                          ),
                        ),
                      )
                    : Column(
                        children: [
                          Text(
                            "Time Remaining",
                            style: GoogleFonts.ubuntu(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            timeRemain,
                            style: GoogleFonts.ubuntu(
                              fontWeight: FontWeight.bold,
                              fontSize: 300,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )),
            const SizedBox(
              height: 40,
            ),
            Text(
              currentSection,
              style: GoogleFonts.oswald(
                fontSize: 48,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                wordSpacing: 5,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  time = DateFormat.jm().format(DateTime.now()).toString();
                  currentHour = (DateTime.now().hour);
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

class NoClass extends StatelessWidget {
  const NoClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 50),
            decoration: BoxDecoration(
                color: Colors.deepOrange[300],
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              "No Class",
              style: GoogleFonts.oswald(
                fontWeight: FontWeight.bold,
                fontSize: 50,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

String timeRemains(int currentHour, int currentMinute) {
  //First Period

  if (((currentHour > 9) || (currentHour == 9 && currentMinute >= 10)) &&
      ((currentHour < 9) || (currentHour == 9 && currentMinute <= 45))) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 9, 45)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }

  //Break
  else if (((currentHour > 9) || (currentHour == 9 && currentMinute > 45)) &&
      ((currentHour < 9) || (currentHour == 9 && currentMinute <= 55))) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 9, 55)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }
  //Second Period
  else if (((currentHour > 9) || (currentHour == 9 && currentMinute > 55)) &&
      ((currentHour < 10) || (currentHour == 10 && currentMinute <= 35))) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 10, 35)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }
  // Third Period
  else if (((currentHour > 10) || (currentHour == 10 && currentMinute > 35)) &&
      ((currentHour < 11) || (currentHour == 11 && currentMinute <= 15))) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 11, 15)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }
  // Lunch
  else if (((currentHour > 11) || (currentHour == 11 && currentMinute > 15)) &&
      ((currentHour < 11) || (currentHour == 11 && currentMinute <= 40))) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 11, 40)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }
  // Assembly
  else if (((currentHour > 11) || (currentHour == 11 && currentMinute > 40)) &&
      ((currentHour < 11) || (currentHour == 11 && currentMinute <= 45))) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 11, 45)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }
  // Fourth Period
  else if (((currentHour > 11) || (currentHour == 11 && currentMinute > 45)) &&
      ((currentHour < 12) || (currentHour == 12 && currentMinute <= 20))) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 12, 20)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }
  // Fifth Period
  else if (((currentHour > 12) || (currentHour == 12 && currentMinute > 20)) &&
      ((currentHour < 12) || (currentHour == 12 && currentMinute <= 55))) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 12, 55)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }
  //Break
  else if (((currentHour > 12) || (currentHour == 12 && currentMinute > 55)) &&
      ((currentHour < 13) || (currentHour == 13 && currentMinute <= 5))) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 13, 5)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }
  // Sixth Period
  else if (((currentHour > 13) || (currentHour == 13 && currentMinute > 5)) &&
      ((currentHour < 13) || (currentHour == 13 && currentMinute <= 40))) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 13, 40)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }
  // Seventh Period
  else if (((currentHour > 13) || (currentHour == 13 && currentMinute > 40)) &&
      ((currentHour < 14) || (currentHour == 14 && currentMinute <= 15))) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 14, 15)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }
  // Snack
  else if (((currentHour > 14) || (currentHour == 14 && currentMinute > 15)) &&
      ((currentHour < 14) || (currentHour == 14 && currentMinute <= 30))) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 14, 30)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }
  // Eigth Period
  else if (((currentHour > 14) || (currentHour == 14 && currentMinute > 30)) &&
      ((currentHour < 15) || (currentHour == 15 && currentMinute <= 10))) {
    return (DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 15, 10)
            .difference(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, currentHour, currentMinute)))
        .inMinutes
        .toString();
  }
  // No Period
  else {
    return "No";
  }
}

String sectionFind(int currentHour, int currentMinute) {
  //First Period
  if (((currentHour > 9) || (currentHour == 9 && currentMinute > 10)) &&
      ((currentHour < 9) || (currentHour == 9 && currentMinute <= 45))) {
    return "Period : 1(7 \" D \")";
  }
  //Break
  else if (((currentHour > 9) || (currentHour == 9 && currentMinute > 45)) &&
      ((currentHour < 9) || (currentHour == 9 && currentMinute <= 55))) {
    return "Short Break";
  }
  //Second Period
  else if (((currentHour > 9) || (currentHour == 9 && currentMinute > 55)) &&
      ((currentHour < 10) || (currentHour == 10 && currentMinute <= 35))) {
    return "Period : 2(7 \" D \")";
  }
  // Third Period
  else if (((currentHour > 10) || (currentHour == 10 && currentMinute > 35)) &&
      ((currentHour < 11) || (currentHour == 11 && currentMinute <= 15))) {
    return "Period : 3(7 \" B \")";
  }
  // Lunch
  else if (((currentHour > 11) || (currentHour == 11 && currentMinute > 15)) &&
      ((currentHour < 11) || (currentHour == 11 && currentMinute <= 40))) {
    return "Lunch Break";
  }
  // Assembly
  else if (((currentHour > 11) || (currentHour == 11 && currentMinute > 40)) &&
      ((currentHour < 11) || (currentHour == 11 && currentMinute <= 45))) {
    return "Assembly";
  }
  // Fourth Period
  else if (((currentHour > 11) || (currentHour == 11 && currentMinute > 45)) &&
      ((currentHour < 12) || (currentHour == 12 && currentMinute <= 20))) {
    return "Period : 4(7 \" B \")";
  }
  // Fifth Period
  else if (((currentHour > 12) || (currentHour == 12 && currentMinute > 20)) &&
      ((currentHour < 12) || (currentHour == 12 && currentMinute <= 55))) {
    return "Period : 5(7 \" C \")";
  }
  //Break
  else if (((currentHour > 12) || (currentHour == 12 && currentMinute > 55)) &&
      ((currentHour < 13) || (currentHour == 13 && currentMinute <= 5))) {
    return "Short Break";
  }
  // Sixth Period
  else if (((currentHour > 13) || (currentHour == 13 && currentMinute > 5)) &&
      ((currentHour < 13) || (currentHour == 13 && currentMinute <= 40))) {
    return "Period : 6(7 \" C \")";
  }
  // Seventh Period
  else if (((currentHour > 13) || (currentHour == 13 && currentMinute > 40)) &&
      ((currentHour < 14) || (currentHour == 14 && currentMinute <= 15))) {
    return "Period : 7(7 \" A \")";
  }
  // Snack
  else if (((currentHour > 14) || (currentHour == 14 && currentMinute > 15)) &&
      ((currentHour < 14) || (currentHour == 14 && currentMinute <= 30))) {
    return "Snack Break";
  }
  // Eigth Period
  else if (((currentHour > 14) || (currentHour == 14 && currentMinute > 30)) &&
      ((currentHour < 15) || (currentHour == 15 && currentMinute <= 10))) {
    return "Period : 8(7 \" A \")";
  }
  // No Period
  else {
    return "No Period";
  }
}
