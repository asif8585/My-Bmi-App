import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/constant_values.dart';
import '../components/calculate_button.dart';

class ResultPage extends StatefulWidget {
  ResultPage(
      {required this.bmiResult,
      required this.conclusion,
      required this.resultText,
      required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;
  final String conclusion;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(96, 21, 20, 20),
        title: Text(
          'BMI RESULTS',
          style: GoogleFonts.acme(color: Colors.deepOrange, fontSize: 20),
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              child: Text(
                'Your Result',
                style: GoogleFonts.acme(textStyle: kResultTitleStyle),
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardColour: kinactiveCardColor,
              cardChild: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      widget.resultText,
                      style: GoogleFonts.acme(textStyle: resultTextStyle),
                    ),
                    Text(
                      widget.bmiResult,
                      style: GoogleFonts.acme(textStyle: kBmiTextStyle),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Text(
                        widget.conclusion,
                        style: GoogleFonts.acme(
                            fontSize: 20,
                            color: Color.fromARGB(255, 250, 155, 126)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(23),
                      child: Text(
                        widget.interpretation,
                        style: GoogleFonts.acme(
                            color: Color.fromARGB(255, 158, 244, 161),
                            fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          reCalculateButton()
        ],
      ),
    );
  }
}
