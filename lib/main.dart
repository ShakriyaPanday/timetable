import 'package:flutter/material.dart';
import 'package:timetable/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Bell",
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.deepOrange[50],
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.deepOrange[300],
            foregroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            toolbarHeight: 70,
          )),
      home: const HomePage(),
    );
  }
}
