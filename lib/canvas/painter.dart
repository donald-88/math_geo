
import 'package:flutter/material.dart';
import 'dart:ui';

class LinePainter extends ChangeNotifier implements CustomPainter {

var strokes = <List<Offset>>[];
var points = <Offset>[];
bool hitTest(Offset position) => true;

void startStroke(Offset position){
  print("start stroke");
  strokes.add([position]);
  points.add(position);
  notifyListeners();
}


@override
void paint(Canvas canvas, Size size){

  Paint strokePaint = Paint();
  strokePaint.color = Colors.teal;
  strokePaint.style = PaintingStyle.stroke;
  strokePaint.strokeWidth = 2;

  Paint pointPaint = Paint();
  pointPaint.strokeWidth = 10;
  pointPaint.color = Colors.teal;
  pointPaint.strokeCap = StrokeCap.round;

  
  
  for (var stroke in strokes){
    canvas.drawPoints(PointMode.points,stroke, pointPaint);
    Path strokePath = Path();
    strokePath.addPolygon(points, true);
    canvas.drawPath(strokePath, strokePaint);
  }
}

bool shouldRepaint(covariant CustomPainter oldDelegate){
  return true;
}


@override
bool shouldRebuildSemantics(covariant CustomPainter oldDelegate) => false;

  @override
  // TODO: implement semanticsBuilder
  SemanticsBuilderCallback? get semanticsBuilder => null;


}
















