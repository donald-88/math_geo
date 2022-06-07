import 'package:flutter/material.dart';
import 'package:math_geometry/widgets/toolbar.dart';
import '../../../canvas/painter.dart';
import '../../../widgets/grid.dart';

class Transformations extends StatefulWidget {
  const Transformations({Key? key}) : super(key: key);

  @override
  State<Transformations> createState() => _TransformationsState();
}

class _TransformationsState extends State<Transformations> {
  late GestureDetector touch;
  late CustomPaint canvas;
  late LinePainter linePainter;

  bool _dragging = false;
  // bool _touchingPoint(Offset x, Offset y) {
//   DragStartDetails details;
//  return x >= details.localPosition && x <= details.localPosition;
// }

  void onPanStart(DragStartDetails details) {
    print(details.localPosition);
    linePainter.startStroke(details.localPosition);
  }

  @override
  void initState() {
    super.initState();
    linePainter = LinePainter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: const Color.fromARGB(224, 224, 224, 255),
        title: const Text('NxtGen Labs Geometry'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.question_mark))
        ],
      ),
      floatingActionButton: const ToolBar(),
      body: GestureDetector(
        onPanStart: onPanStart,
        child: RepaintBoundary(
          child: Container(
              color: Colors.grey[400],
              height: double.infinity,
              width: double.infinity,
              child: CustomPaint(
                foregroundPainter: linePainter,
                child: const MyGrid(),
              )),
        ),
      ),
    );
  }
}
