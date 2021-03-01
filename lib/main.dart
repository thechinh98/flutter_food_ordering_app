import 'package:flutter/material.dart';
import 'package:flutter_food_ordering_app/constant.dart';
import 'package:flutter_food_ordering_app/screens/home_screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          body1: TextStyle(color: kSecondaryColor),
          body2: TextStyle(color: kSecondaryColor),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
