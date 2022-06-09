import 'package:flutter/material.dart';

class ToolBar extends StatelessWidget {
  final void Function() onClick;
  final void Function() delete;

  ToolBar({required this.onClick, required this.delete});
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          heroTag: 'draw',
          backgroundColor: Colors.teal,
          foregroundColor: Color.fromARGB(224, 224, 224, 255),
          onPressed: _tapped,
          child: Icon(Icons.polyline),
        ),
        SizedBox(width: 10),
        FloatingActionButton(
          heroTag: 'delete',
          backgroundColor: Colors.teal,
          foregroundColor: Color.fromARGB(224, 224, 224, 255),
          onPressed: delete,
          child: Icon(Icons.delete),
        ),
        SizedBox(width: 10),
        FloatingActionButton(
          heroTag: 'grid',
          backgroundColor: Colors.teal,
          foregroundColor: Color.fromARGB(224, 224, 224, 255),
          onPressed: onClick,
          child: Icon(Icons.grid_4x4),
        ),
      ],
    );
  }
}

void _tapped() {}
