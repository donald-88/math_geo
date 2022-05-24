import 'package:flutter/material.dart';
import 'package:math_geometry/widgets/canvas.dart';
import 'package:math_geometry/widgets/toolbar.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.green,
      title: const Text('NxtGen Labs Geometry'),
    ),
    body: Workspace(),
    floatingActionButton: ToolBar()
    
    )
));