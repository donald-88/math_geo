import 'package:flutter/material.dart';
import 'dart:ui';

class LinePainter extends ChangeNotifier implements CustomPainter {
  var strokes = <List<Offset>>[];
  var points = <Offset>[];
  List<String> alphabet = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z'
  ];
  bool hitTest(Offset position) => true;

  void startStroke(Offset position) {
    print("start stroke");
    strokes.add([position]);
    points.add(position);
    notifyListeners();
  }

  void deletePoint() {
    if (strokes.isNotEmpty && points.isNotEmpty) {
      strokes.removeLast();
      points.removeLast();
      notifyListeners();
    }
  }

  @override
  void paint(Canvas canvas, Size size) {
    Paint strokePaint = Paint();
    strokePaint.color = Colors.teal;
    strokePaint.style = PaintingStyle.stroke;
    strokePaint.strokeWidth = 2;

    Paint pointPaint = Paint();
    pointPaint.strokeWidth = 10;
    pointPaint.color = Colors.teal;
    pointPaint.strokeCap = StrokeCap.round;

    for (var stroke in strokes) {
      canvas.drawPoints(PointMode.points, stroke, pointPaint);
      Path strokePath = Path();
      strokePath.addPolygon(points, true);
      canvas.drawPath(strokePath, strokePaint);
    }

    var counter = 0;
    for (var point in points) {
      TextSpan span = TextSpan(
          style: TextStyle(color: Colors.grey[700]), text: alphabet[counter]);
      TextPainter tp = TextPainter(
          text: span,
          textAlign: TextAlign.left,
          textDirection: TextDirection.ltr,
          textScaleFactor: 1.0);
      tp.layout();
      tp.paint(canvas, Offset(point.dx, point.dy));
      ++counter;
    }
  }

  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(covariant CustomPainter oldDelegate) => false;

  @override
  // TODO: implement semanticsBuilder
  SemanticsBuilderCallback? get semanticsBuilder => null;
}
