import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timetable/utlis/noclass.dart';
import 'package:timetable/utlis/periodcheck.dart';

class CurrentTime extends StatefulWidget {
  const CurrentTime({super.key});

  @override
  State<CurrentTime> createState() => _CurrentTimeState();
}

class _CurrentTimeState extends State<CurrentTime> {
  String time = DateFormat.E().format(DateTime.now()).toString();
  @override
  Widget build(BuildContext context) {
    return time == 'Mon' ? const PeriodCheck() : const NoClass();
  }
}
