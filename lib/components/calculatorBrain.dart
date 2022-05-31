import 'dart:math';
import 'weight_ScrollWheel.dart';
import 'package:flutter/cupertino.dart';
import 'height_class.dart';
import 'weight_class.dart';

class CalculatorBrain {
  CalculatorBrain({required this.input_height, required this.input_weight});
  final int input_height;
  final int input_weight;

  double? _bmi;

  String calculatorBMI() {
    _bmi = input_weight /
        pow(currentSliderValue_ft / 3.28084 + inchValueSlider / 39.37, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String textBMIresult() {
    if (_bmi == null) {
      return ' undefined';
    }
    if (_bmi! >= 25) {
      return 'OVERWEIGHT';
    }
    if (_bmi! > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getBMIsuggestion() {
    if (_bmi == null) {
      return 'undefined';
    }
    if (_bmi! >= 25) {
      return 'Consume less “bad” fat and more “good” fat.';
    }
    if (_bmi! > 18.5) {
      return 'Great! Keep Exercising';
    } else {
      return 'Eat more frequently.';
    }
  }
}
