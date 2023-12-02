import 'package:flutter/material.dart';

class Case extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
      border: Border.all(
        color: Colors.cyanAccent, 
        width: 10, 
      ),
    ),
    );
  }

}