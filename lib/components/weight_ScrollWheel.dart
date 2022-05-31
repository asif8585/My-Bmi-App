import 'package:bmi_calculator/components/tile_of_scrollWheel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Weight_Scoller extends StatefulWidget {
  @override
  State<Weight_Scoller> createState() => _Weight_ScollerState();
}

int current_Weight_Number = 40;

class _Weight_ScollerState extends State<Weight_Scoller> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Text(
              'Weight',
              style: GoogleFonts.acme(fontSize: 20, color: Colors.deepOrange),
            ),
            Icon(
              Icons.arrow_forward,
              color: Colors.deepOrange,
            )
          ],
        ),
        Expanded(
          child: ListWheelScrollView.useDelegate(
            onSelectedItemChanged: (value) {
              setState(() {
                current_Weight_Number = value;
              });
            },
            itemExtent: 55,
            useMagnifier: true,
            diameterRatio: 10,
            magnification: 1.2,
            physics: FixedExtentScrollPhysics(),
            perspective: 0.006,
            childDelegate: ListWheelChildBuilderDelegate(
              childCount: 150,
              builder: (context, index) {
                return MyTile(
                  numbers: index,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}


// class Weight_child extends StatefulWidget {
//   @override
//   State<Weight_child> createState() => _Weight_childState();
// }

// int weight = 60;

// class _Weight_childState extends State<Weight_child> {
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Text(
//             'WEIGHT',
//             style: GoogleFonts.acme(fontSize: 17),
//           ),
//           ListWheelScrollView.useDelegate(
//             onSelectedItemChanged: (value) {
//               setState(() {
//                 weight = value;
//               });
//             },
//             itemExtent: 50,
//             childDelegate: ListWheelChildBuilderDelegate(
//                 childCount: 100,
//                 builder: (context, index) {
//                   return MyTile(
//                     numbers: index,
//                   );
//                 }),
//           )
//         ],
//       ),
//     );
//   }
// }
