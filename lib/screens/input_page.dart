import 'package:bmi_calculator/components/heightScroller.dart';
import 'package:bmi_calculator/components/weight_ScrollWheel.dart';
import 'package:flutter/material.dart';
import '../components/age_class.dart';
import '../components/icon_content_data.dart';
import '../components/calculate_button.dart';
import 'calculate_results.dart';
import '../components/weight_class.dart';
import '../components/height_class.dart';
import '../components/constant_values.dart';
import 'package:google_fonts/google_fonts.dart';

class Inputpage extends StatefulWidget {
  @override
  State<Inputpage> createState() => _InputpageState();
}

enum Gender { male, female }

class _InputpageState extends State<Inputpage> {
  Color maleCardColor = kinactiveCardColor;
  Color femaleCardColor = kinactiveCardColor;

  Gender selectedGender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(96, 21, 20, 20),
        title: Center(
          child: Text(
            'BMI CALCULATOR',
            style: GoogleFonts.acme(color: Colors.deepOrange),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (() {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    }),
                    child: ReusableCard(
                      cardColour: selectedGender == Gender.male
                          ? kactiveCardColor
                          : kinactiveCardColor,
                      cardChild: IconContent(
                        icon: Icons.male,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      cardColour: selectedGender == Gender.female
                          ? kactiveCardColor
                          : kinactiveCardColor,
                      cardChild: IconContent(
                        icon: Icons.female,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardColour: kinactiveCardColor,
              cardChild: HeightScrollerClass(),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardColour: kinactiveCardColor,
                    cardChild: Weight_Scoller(),
                  ),
                ),
              ],
            ),
          ),
          calculateBtn()
        ],
      ),
    );
  }
}

//REUSABLE CARDS

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.cardColour, this.cardChild});
  final Color cardColour;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: cardColour,
      ),
      margin: EdgeInsets.all(11),
      // height: 200,
      // width: 360,
    );
  }
}
