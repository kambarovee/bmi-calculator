import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(BMIcalculator());
}

class BMIcalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E30),
        scaffoldBackgroundColor: Color(0xFF0A0E30),
      ),
      home: InputPage(),
    );
  }
}
