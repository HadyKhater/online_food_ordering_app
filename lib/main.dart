import 'package:flutter/material.dart';
import 'package:online_food_ordering_app/screens/constants.dart';
import 'package:online_food_ordering_app/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food App",
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme:TextTheme(
        bodyText1: TextStyle(color: ksecondaryColor),
        bodyText2: TextStyle(color: ksecondaryColor),
        ),
      ),
      home: Home_Screen(),
    );
  }
}
