import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timetable/utlis/currenttime.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
        body: const CurrentTime());
  }
}
