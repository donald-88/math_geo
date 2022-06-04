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
          onPressed: _tapped,
          child: Text('line'),
          ),
        FloatingActionButton(
          heroTag: 'point',
          backgroundColor: Colors.teal,
          onPressed: _tapped,
          child: Text('Point'),
          ),
        FloatingActionButton(
          heroTag: 'drag',
          backgroundColor: Colors.teal,
          onPressed: _tapped,
          child: Text('Drag'),
          ),
        FloatingActionButton(
          heroTag: 'erase',
          backgroundColor: Colors.teal,
          onPressed: _tapped,
          child: Text('Erase'),
          ),
      ],
    );
  }
}

void _tapped(){

}