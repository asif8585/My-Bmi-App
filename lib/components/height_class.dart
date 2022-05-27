import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Height_child extends StatefulWidget {
  @override
  State<Height_child> createState() => _Height_childState();
}

int height = 100;

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
            Text(height.round().toString(),
                style: GoogleFonts.acme(fontSize: 40)),
            SizedBox(
              width: 5,
            ),
            Text(
              'CM',
              style: GoogleFonts.acme(),
            ),
          ],
        ),
        Slider(
          value: height.toDouble(),
          onChanged: (value) {
            setState(() {
              height = value.toInt();
            });
          },
          activeColor: Colors.deepOrange,
          inactiveColor: Colors.white,
          min: 0,
          max: 250,
        ),
        Text(
          'HEIGHT',
          style: GoogleFonts.acme(fontSize: 17),
        ),
      ],
    );
  }
}
