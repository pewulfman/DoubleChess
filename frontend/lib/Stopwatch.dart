import 'package:flutter/material.dart';

class StopWatch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            // Taille minimum souhaitée
            double actualWidth = 500.0;
            double actualHeight = 200.0;

             if (constraints.maxWidth != double.infinity) {
              actualWidth = constraints.maxWidth * 0.5;
              actualHeight = constraints.maxHeight * 0.2;
            } 
        
            return Container(
              width: actualWidth,
              height: actualHeight,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 20,
                ),
              ),
              // Ajoutez le reste de votre contenu ici
            );
          },
        );
  }

}

class StopWatchStateFull extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }

}

class _StopWatchState extends State<StopWatchStateFull> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}