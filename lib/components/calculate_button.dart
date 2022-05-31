import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constant_values.dart';
import 'package:bmi_calculator/screens/calculate_results.dart';
import 'calculatorBrain.dart';
import 'height_class.dart';
import 'weight_class.dart';
import 'weight_ScrollWheel.dart';

class calculateBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        CalculatorBrain calc = CalculatorBrain(
            input_height: height, input_weight: current_Weight_Number);

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => ResultPage(
                  bmiResult: calc.calculatorBMI(),
                  resultText: calc.textBMIresult(),
                  interpretation: calc.getBMIsuggestion(),
                )),
          ),
        );
      }),
      child: Container(
        alignment: AlignmentDirectional.center,
        child: Text(
          'CALCULATE',
          style: GoogleFonts.acme(
              fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 1),
        ),
        color: kbootomContainerColor,
        margin: EdgeInsets.only(top: 10),
        width: double.maxFinite,
        height: 60,
      ),
    );
  }
}

///recalculate buuton

class reCalculateButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.pop(context);
      }),
      child: Container(
        alignment: AlignmentDirectional.center,
        child: Text(
          'RE-CALCULATE',
          style: GoogleFonts.acme(
              fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 1),
        ),
        color: kbootomContainerColor,
        margin: EdgeInsets.only(top: 10),
        width: double.maxFinite,
        height: 60,
      ),
    );
  }
}
