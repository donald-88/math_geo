import 'package:flutter/material.dart';
import 'package:math_geometry/widgets/toolbar.dart';
import '../canvas/painter.dart';
import '../widgets/grid.dart';

class Workspace extends StatefulWidget {
  const Workspace({Key? key}) : super(key: key);

  @override
  State<Workspace> createState() => _WorkspaceState();
}


class _WorkspaceState extends State<Workspace> {
  late GestureDetector touch;
  late CustomPaint canvas;
  late LinePainter linePainter;

  void onPanStart(DragStartDetails details){
    print(details.localPosition);
    linePainter.startStroke(details.localPosition);
  }

  void onPanUpdate(DragUpdateDetails details){
    print(details.localPosition);
    linePainter.appendStroke(details.localPosition);
  }

  void onPanEnd(DragEndDetails details){
    linePainter.endStroke();
  }

  @override
  void initState(){
    super.initState();
    linePainter = LinePainter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NxtGen Labs Geometry'),
        backgroundColor: Colors.teal,
      ),
      floatingActionButton: const ToolBar(),
      body: GestureDetector(
        onPanStart: onPanStart,
        onPanUpdate: onPanUpdate,
        onPanEnd: onPanEnd,
        child: RepaintBoundary(
          child: Container(
            color: Colors.grey[400],
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: CustomPaint(
                  painter: linePainter,
                  child: const MyGrid(),
                )
          ),
        ),
      ),
    );
  }
 

}