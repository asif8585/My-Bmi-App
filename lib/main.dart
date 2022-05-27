import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      home: Inputpage(),
      theme: ThemeData.dark(),
    );
  }
}
