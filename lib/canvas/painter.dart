
import 'package:flutter/material.dart';
import 'dart:ui';

class LinePainter extends ChangeNotifier implements CustomPainter {

var strokes = <List<Offset>>[];
bool hitTest(Offset position) => true;

void startStroke(Offset position){
  print("start stroke");
  strokes.add([position]);
  notifyListeners();
}

void appendStroke(Offset position){
  print("appending stroke");
  var stroke = strokes.last;
  stroke.add(position);
  notifyListeners();
}

void endStroke(){
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
    Path strokePath = Path();

    Offset a = stroke.first;
    Offset b = stroke.last;
    strokePath.moveTo(a.dx, a.dy);
    strokePath.lineTo(b.dx, b.dy);
    canvas.drawPoints(PointMode.points,[a,b], pointPaint);
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
















