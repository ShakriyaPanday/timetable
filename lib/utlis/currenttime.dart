import 'package:flutter/material.dart';

class CurrentTime extends StatefulWidget {
  const CurrentTime({super.key});

  @override
  State<CurrentTime> createState() => _CurrentTimeState();
}

class _CurrentTimeState extends State<CurrentTime> {
  String currentTime = (DateTime.now().hour % 12).toString() +
      " : " +
      DateTime.now().minute.toString();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(currentTime),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              currentTime = (DateTime.now().hour % 12).toString() +
                  " : " +
                  DateTime.now().minute.toString();
            });
          },
          child: Container(
            child: Text("Designed by Shakriya Panday"),
          ),
        ),
      ],
    );
  }
}
