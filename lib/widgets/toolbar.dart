import 'package:flutter/material.dart';

class ToolBar extends StatelessWidget {
  final void Function() onClick;

  ToolBar({required this.onClick});
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
            heroTag: 'Line',
            backgroundColor: Colors.teal,
            foregroundColor: Color.fromARGB(224, 224, 224, 255),
            onPressed: _tapped,
            child: Icon(Icons.ads_click)),
        SizedBox(width: 10),
        FloatingActionButton(
          heroTag: 'point',
          backgroundColor: Colors.teal,
          foregroundColor: Color.fromARGB(224, 224, 224, 255),
          onPressed: _tapped,
          child: Icon(Icons.polyline),
        ),
        SizedBox(width: 10),
        FloatingActionButton(
          heroTag: 'drag',
          backgroundColor: Colors.teal,
          foregroundColor: Color.fromARGB(224, 224, 224, 255),
          onPressed: _tapped,
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
