import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Weight_child extends StatefulWidget {
  Weight_child({Key? key}) : super(key: key);

  @override
  State<Weight_child> createState() => _Weight_childState();
}

int weight = 60;

class _Weight_childState extends State<Weight_child> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'WEIGHT',
          style: GoogleFonts.acme(fontSize: 17),
        ),
        Text(
          weight.round().toString(),
          style: GoogleFonts.acme(fontSize: 42),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // decrement button
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black87),
                shape: MaterialStateProperty.all(
                  CircleBorder(),
                ),
                fixedSize: MaterialStateProperty.all(
                  Size(50, 50),
                ),
              ),
              onPressed: () {
                setState(() {
                  weight--;
                });
              },
              child: Icon(
                Icons.remove,
                color: Colors.deepOrange,
                size: 30,
              ),
            ),
            //increment button
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black87),
                  shape: MaterialStateProperty.all(
                    CircleBorder(),
                  ),
                  fixedSize: MaterialStateProperty.all(Size(50, 50))),
              onPressed: () {
                setState(() {
                  weight++;
                });
              },
              child: Icon(
                Icons.add,
                color: Colors.deepOrange,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
