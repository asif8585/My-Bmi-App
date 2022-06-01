import 'package:bmi_calculator/components/tile_of_scrollWheel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeightScrollerClass extends StatefulWidget {
  HeightScrollerClass({Key? key}) : super(key: key);

  @override
  State<HeightScrollerClass> createState() => _HeightScrollerClassState();
}

int height_ft = 5;
int height_inch = 6;

class _HeightScrollerClassState extends State<HeightScrollerClass> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Ft',
          style: GoogleFonts.acme(fontSize: 25, color: Colors.deepOrange),
        ),
        Icon(
          Icons.arrow_forward_rounded,
          color: Colors.deepOrange,
        ),
        Expanded(
          child: ListWheelScrollView.useDelegate(
            useMagnifier: true,
            magnification: 1.2,
            physics: ScrollPhysics(),
            itemExtent: 50,
            childDelegate: ListWheelChildBuilderDelegate(
              childCount: 10,
              builder: (context, index) {
                return MyTile(numbers: index);
              },
            ),
            onSelectedItemChanged: (ft_value) {
              setState(() {
                height_ft = ft_value;
              });
            },
          ),
        ),
        Text(
          'Inches',
          style: GoogleFonts.acme(fontSize: 25, color: Colors.deepOrange),
        ),
        Icon(
          Icons.arrow_forward_rounded,
          color: Colors.deepOrange,
        ),
        Expanded(
          child: ListWheelScrollView.useDelegate(
            itemExtent: 50,
            childDelegate: ListWheelChildBuilderDelegate(
              childCount: 12,
              builder: (context, index) {
                return MyTile(numbers: index);
              },
            ),
            onSelectedItemChanged: (inch_value) {
              setState(() {
                height_inch = inch_value;
              });
            },
          ),
        ),
      ],
    );
  }
}
