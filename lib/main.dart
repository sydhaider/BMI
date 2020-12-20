import 'package:flutter/material.dart';
import 'input_page.dart';


void main() => runApp(BMIcalcolator());

class BMIcalcolator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0c1134),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
