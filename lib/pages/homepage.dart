import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  DateTime datetime1 = DateTime.now();
  DateTime datetime2 = DateTime(2022, 11, 15, 22, 56);
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
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(datetime1.toString()),
              ),
              Container(
                child: Text(datetime2.toString()),
              ),
              Container(
                child:
                    Text(datetime1.difference(datetime2).inMinutes.toString()),
              ),
            ]),
      ),
    );
  }
}
