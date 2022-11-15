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
          scaffoldBackgroundColor: Colors.deepPurple[50],
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.deepPurple[100],
            elevation: 0,
            centerTitle: true,
            toolbarHeight: 70,
          )),
      home: HomePage(),
    );
  }
}
