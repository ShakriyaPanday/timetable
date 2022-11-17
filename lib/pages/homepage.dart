import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timetable/utlis/currenttime.dart';

class HomePage extends StatelessWidget {
  DateTime datetime1 = DateTime.now();
  DateTime datetime2 = DateTime(2022, 11, 15, 22, 56);

  DateTime now = DateTime.now();

  Duration diff = Duration();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Class Notification",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              // color: Colors.white,
            ),
          ),
        ),
        body: CurrentTime());
  }
}
