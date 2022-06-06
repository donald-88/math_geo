import 'package:flutter/material.dart';

class ToolBar extends StatefulWidget {
  const ToolBar({Key? key}) : super(key: key);

  @override
  State<ToolBar> createState() => _ToolBarState();
}

class _ToolBarState extends State<ToolBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        FloatingActionButton(
          heroTag: 'Line',
          backgroundColor: Colors.teal,
          foregroundColor: Color.fromARGB(224, 224, 224, 255),
          onPressed: _tapped,
          child: Icon(Icons.ads_click)
          ),
          SizedBox(width: 10),
        FloatingActionButton(
          heroTag: 'point',
          backgroundColor: Colors.teal,
          foregroundColor: Color.fromARGB(224, 224, 224, 255),
          onPressed: _tapped,
          child: Icon(Icons.polyline),
          ),
          SizedBox(width:10),
        FloatingActionButton(
          heroTag: 'drag',
          backgroundColor: Colors.teal,
          foregroundColor: Color.fromARGB(224, 224, 224, 255),
          onPressed: _tapped,
          child: Icon(Icons.delete),
          ),
      ],
    );
  }
}

void _tapped(){

}