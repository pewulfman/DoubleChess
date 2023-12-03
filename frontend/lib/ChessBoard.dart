import 'package:flutter/material.dart';
import 'package:frontend/Case.dart';

class ChessBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return LayoutBuilder ( 
      builder: (BuildContext context, BoxConstraints constraints) {
        double boardSize = constraints.maxHeight * 0.8;
        List<Widget> listeWidgets = [];
        for (int width = 0; width < 8; width++){
          for(int height = 0; height < 8; height++ ){
            listeWidgets.add(
              Case(rowChess: width,colChess: height),
            );
          }
        }
        return Container(
          constraints: const BoxConstraints(
            minWidth: 100,
            minHeight: 100,
          ),
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
    );
  }
}