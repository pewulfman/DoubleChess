import 'package:flutter/material.dart';
import 'package:frontend/Case.dart';

class ChessBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> listeWidgets = [];
    for (int width = 0; width < 8; width++){
      for(int height = 0; height < 8; height++ ){
        listeWidgets.add(
          Case(rowChess: width,colChess: height),
        );
      }
   
    }

     return Container(
      width: 1000,
      height: 1000,
      decoration: BoxDecoration(
      border: Border.all(
        color: Colors.redAccent, 
        width: 20, 
      ),
    ),
    child: GridView.count(
      crossAxisCount: 8,
      children: listeWidgets,
  ),
    );
    
  }

}