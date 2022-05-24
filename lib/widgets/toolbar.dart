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
          backgroundColor: Colors.green,
          onPressed: _tapped,
          child: Text('line'),
          ),
        FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: _tapped,
          child: Text('Point'),
          ),
        FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: _tapped,
          child: Text('Drag'),
          ),
        FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: _tapped,
          child: Text('Erase'),
          ),
      ],
    );
  }
}

void _tapped(){

}