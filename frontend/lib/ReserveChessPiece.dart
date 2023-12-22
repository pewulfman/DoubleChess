import 'package:flutter/material.dart';

class RectangleReserveChessPiece extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minWidth: 100,
        minHeight: 100
      ),
      width: 200,
      height: 1000,
      decoration: BoxDecoration(
        color: Colors.grey[300], 
        border: Border.all(color: Colors.black), 
        borderRadius: BorderRadius.circular(8), 
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue, 
              alignment: Alignment.center,
              child: const Text("Piece de réserve"),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.yellow, 
              alignment: Alignment.center,
              child: const Text("Piece de réserve"),
            ),
          ),
        ],
      ),
    );
  }

}
class ReserveChessPiece extends StatefulWidget {

  @override
  State<ReserveChessPiece> createState() => _ReserveChessPieceState();

}

class _ReserveChessPieceState extends State<ReserveChessPiece> {
    Color _backgroundColor = Colors.green;

  void _changeColor(){
    setState(() {
      _backgroundColor = _backgroundColor == Colors.white ? Colors.blue : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}