import 'package:OSP/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:OSP/introduction_page.dart';
import 'package:OSP/home_page.dart';
import 'package:OSP/home_page2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}
