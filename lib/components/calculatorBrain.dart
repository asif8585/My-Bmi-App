import 'dart:math';
import 'package:bmi_calculator/components/heightScroller.dart';

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
    _bmi = input_weight / pow(height_ft / 3.28084 + height_inch / 39.37, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String textBMIresult() {
    if (_bmi == null) {
      return ' undefined';
    }
    if (_bmi! > 29.9) {
      return 'OBESE';
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
    if (_bmi! >= 29.9) {
      return '';
    }
    if (_bmi! >= 24.9) {
      return 'For your height, a normal weight range would be from 61.3 to 82.5 kilograms..';
    }
    if (_bmi! >= 18.5) {
      return 'For your height, a normal weight range would be from 59.9 to 80.7 kilograms.';
    } else {
      return 'For your height, a normal weight range would be from 61.3 to 82.5 kilograms..';
    }
  }

  String conclusion() {
    if (_bmi == null) {
      return 'undefined';
    }
    if (_bmi! > 29.9) {
      return 'Your BMI is $_bmi, indicating your weight is in the Obese category for adults of your height.';
    }
    if (_bmi! >= 25) {
      return 'Your BMI is  $_bmi, indicating your weight is in the Overweight category for adults of your height.';
    }
    if (_bmi! > 18.5) {
      return 'Your BMI is ${_bmi}, indicating your weight is in the Healthy category for adults of your height.';
    } else {
      return 'Your BMI is $_bmi, indicating your weight is in the Underweight category for adults of your height.';
    }
  }
}
