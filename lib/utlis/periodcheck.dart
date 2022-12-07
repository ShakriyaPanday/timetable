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
            child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30.0),
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepOrange[300],
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 4),
                        blurRadius: 20.0)
                  ],
                ),
                child: Center(
                    child: Text(
                  "Normal Hour",
                  style: TextStyle(
                    fontSize: 34.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange[50],
                  ),
                ))),
          ),
          const SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: (() {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const ZeroHour())));
            }),
            child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30.0),
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepOrange[300],
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 4),
                        blurRadius: 20.0)
                  ],
                ),
                child: Center(
                    child: Text(
                  "Zero Hour",
                  style: TextStyle(
                    fontSize: 34.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange[50],
                  ),
                ))),
          )
        ],
      ),
    );
  }
}
