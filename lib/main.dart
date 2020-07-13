import 'package:flutter/material.dart';

import 'inputs_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        primaryColor: Color(0xFF0A0E21),
      ),
//      theme: ThemeData(
//          // ignore: deprecated_member_use
//          textTheme: TextTheme(body1: TextStyle(color: Colors.white)),
//          primaryColor: Color(0xFF0A0E21),
//          accentColor: Colors.purple,
//          scaffoldBackgroundColor: Color(0xFF0A0E21)
//      ),
      home: InputPage(),
    );
  }
}
