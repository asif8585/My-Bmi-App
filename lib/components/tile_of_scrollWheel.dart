import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  int numbers;

  MyTile({required this.numbers});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        numbers < 10 ? '0' + numbers.toString() : numbers.toString(),
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      ),
    );
  }
}
