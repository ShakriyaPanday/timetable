import 'package:flutter/material.dart';
import 'package:timetable/utlis/normalperiod.dart';
import 'package:timetable/utlis/zerohour.dart';

class PeriodCheck extends StatefulWidget {
  const PeriodCheck({super.key});

  @override
  State<PeriodCheck> createState() => _PeriodCheckState();
}

class _PeriodCheckState extends State<PeriodCheck> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (() {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const Period())));
            }),
            child: const Text("Normal"),
          ),
          SizedBox(
            height: 100,
          ),
          GestureDetector(
            onTap: (() {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const ZeroHour())));
            }),
            child: const Text("Zero"),
          )
        ],
      ),
    );
  }
}
