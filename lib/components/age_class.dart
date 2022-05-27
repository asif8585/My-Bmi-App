import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Age_child extends StatefulWidget {
  Age_child({Key? key}) : super(key: key);

  @override
  State<Age_child> createState() => _Age_childState();
}

class _Age_childState extends State<Age_child> {
  double age_increase = 20;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('AGE', style: GoogleFonts.acme(fontSize: 17)),
        Text(
          age_increase.round().toString(),
          style: GoogleFonts.acme(fontSize: 42),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // decrement button
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromARGB(128, 0, 0, 0)),
                shape: MaterialStateProperty.all(
                  CircleBorder(),
                ),
                fixedSize: MaterialStateProperty.all(
                  Size(50, 50),
                ),
              ),
              onPressed: () {
                setState(() {
                  age_increase--;
                });
              },
              child: Icon(
                Icons.remove,
                color: Colors.deepOrange,
                size: 30,
              ),
            ),
/////increment button
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black87),
                  shape: MaterialStateProperty.all(
                    CircleBorder(),
                  ),
                  fixedSize: MaterialStateProperty.all(Size(50, 50))),
              onPressed: () {
                setState(() {
                  age_increase++;
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
