import 'package:flutter/material.dart';
import 'package:math_geometry/pages/topics/transformations/levels.dart';
import 'package:math_geometry/widgets/toolbar.dart';
import '../../../canvas/painter.dart';
import '../../../canvas/grid.dart';

class Transformations extends StatefulWidget {
  const Transformations({Key? key}) : super(key: key);

  @override
  State<Transformations> createState() => _TransformationsState();
}

class _TransformationsState extends State<Transformations> {
  late GestureDetector touch;
  late CustomPaint canvas;
  late LinePainter linePainter;
  double dragX = 0.0;
  double dragY = 0.0;

  bool _dragging = false;
  bool touchingPoint(double x, double y) =>
      x >= dragX && x <= dragX + 10.0 && y >= dragY && y <= dragY + 10.0;

  void onPanStart(DragStartDetails details) {
    linePainter.startStroke(details.localPosition);
  }

  @override
  void initState() {
    super.initState();
    linePainter = LinePainter();
  }

  @override
  Widget build(BuildContext context) {
    final level = ModalRoute.of(context)!.settings.arguments as Levels;

    void _showDialog() {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              backgroundColor: Colors.grey[400],
              title: Text('Level ${level.level}'),
              content: Text(level.question),
              actions: [
                MaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('Attempt'),
                  color: Colors.teal,
                )
              ],
            );
          });
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: const Color.fromARGB(224, 224, 224, 255),
        title: const Text('NxtGen Labs Geometry'),
        actions: [
          IconButton(
              onPressed: _showDialog, icon: const Icon(Icons.question_mark))
        ],
      ),
      floatingActionButton: const ToolBar(),
      body: GestureDetector(
        onPanStart: onPanStart,
        child: RepaintBoundary(
          child: Container(
              color: Colors.grey[400],
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: CustomPaint(
                foregroundPainter: linePainter,
                child: const MyGrid(),
              )),
        ),
      ),
    );
  }
}
