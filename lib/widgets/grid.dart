import 'package:flutter/material.dart';

class MyGrid extends StatefulWidget {
  const MyGrid({Key? key}) : super(key: key);

  @override
  State<MyGrid> createState() => _MyGridState();
}

class _MyGridState extends State<MyGrid> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: CustomPaint(painter: MyGridPainter()));
  }
}

class MyGridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width * 0.5, size.height * 0.5);

    Paint gridPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1
      ..color = Colors.grey;

    Paint centralCordPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3
      ..color = Colors.grey;

    Path gridLines = Path();
    Path centralCoord = Path();

//////////////////////center-coordinates/////////////////
    centralCoord.moveTo(center.dx, 0.0);
    centralCoord.lineTo(center.dx, size.width);
    centralCoord.moveTo(0.0, center.dy);
    centralCoord.lineTo(size.width, center.dy);

//////////////////////
    for (int y = 0; y <= size.height * 2; ++y) {
      if (y % 30 == 0) {
        gridLines.moveTo(y.toDouble(), 0.0);
        gridLines.lineTo(y.toDouble(), size.height);
      }
    }

    for (int x = 0; x <= size.width * 2; ++x) {
      if (x % 30 == 0) {
        gridLines.moveTo(0.0, x.toDouble());
        gridLines.lineTo(size.width, x.toDouble());
      }
    }

    canvas.drawPath(gridLines, gridPaint);
    canvas.drawPath(centralCoord, centralCordPaint);

    for (int xcoord = 0; xcoord <= size.height * 2; ++xcoord) {
      if (xcoord % 60 == 0) {
        String text = xcoord.toString();
        TextSpan span =
            TextSpan(style: TextStyle(color: Colors.grey[600]), text: text);
        TextPainter tp = TextPainter(
            text: span,
            textAlign: TextAlign.left,
            textDirection: TextDirection.ltr,
            textScaleFactor: 1.0 * 0.7);
        tp.layout();
        tp.paint(canvas, Offset(xcoord.toDouble(), center.dy));
      }
    }

    for (int ycoord = 0; ycoord <= size.width; ++ycoord) {
      if (ycoord % 60 == 0) {
        String text = ycoord.toString();
        TextSpan span =
            TextSpan(style: TextStyle(color: Colors.grey[600]), text: text);
        TextPainter tp = TextPainter(
            text: span,
            textAlign: TextAlign.left,
            textDirection: TextDirection.ltr,
            textScaleFactor: 1.0 * 0.7);
        tp.layout();
        tp.paint(canvas, Offset(center.dx, ycoord.toDouble()));
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
