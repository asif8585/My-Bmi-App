import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class Height_child extends StatefulWidget {
  @override
  State<Height_child> createState() => _Height_childState();
}

int height = 100;
int currentSliderValue_ft = 3;
int inchValueSlider = 6;

class _Height_childState extends State<Height_child> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            ///ft slider 1 text

            Text(currentSliderValue_ft.toString(),
                style: GoogleFonts.acme(
                    fontSize: 40, color: Color.fromARGB(208, 244, 109, 67))),
            SizedBox(
              width: 5,
            ),
            Text(
              'Ft',
              style: GoogleFonts.acme(color: Color.fromARGB(208, 244, 109, 67)),
            ),
            SizedBox(
              width: 10,
            ),
            Slider(
                value: currentSliderValue_ft.toDouble(),
                inactiveColor: Colors.white,
                activeColor: Color.fromARGB(208, 244, 109, 67),
                max: 8,
                min: 1,
                onChanged: (double value) {
                  setState(() {
                    currentSliderValue_ft = value.toInt();
                  });
                }),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
/////// inches slider 2 text
            Text(inchValueSlider.toString(),
                style: GoogleFonts.acme(
                    fontSize: 40, color: Color.fromARGB(226, 205, 127, 63))),
            SizedBox(
              width: 5,
            ),
            Text(
              'Inches',
              style: GoogleFonts.acme(color: Color.fromARGB(226, 205, 127, 63)),
            ),
            /////SLIDER  2 INCHES VALUE
            Slider(
                value: inchValueSlider.toDouble(),
                max: 11,
                min: 0,
                inactiveColor: Colors.white,
                activeColor: Color.fromARGB(226, 205, 127, 63),
                onChanged: (double value) {
                  setState(() {
                    inchValueSlider = value.toInt();
                  });
                }),
          ],
        ),
        Text(
          'HEIGHT',
          style: GoogleFonts.acme(fontSize: 17),
        ),
      ],
    );
  }
}
