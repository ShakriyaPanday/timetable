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
  String currentSection = "";
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
            Container(
              child: Text(timeRemain),
            ),
            Container(
              child: Text(currentSection),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentHour = (DateTime.now().hour % 12);
                  currentMinute = DateTime.now().minute;
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
