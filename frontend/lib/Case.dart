import 'package:flutter/material.dart';

class Case extends StatelessWidget {
  const Case({super.key, required this.rowChess, required this.colChess});
  final int rowChess;
  final int colChess;

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
    child: Center(
      child: Text(rowChess.toString()+","+ colChess.toString()), // Placez votre Text widget ici
    ),
  );
  }

}