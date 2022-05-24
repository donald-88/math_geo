
import 'package:flutter/material.dart';

class Workspace extends StatefulWidget {
  const Workspace({Key? key}) : super(key: key);

  @override
  State<Workspace> createState() => _WorkspaceState();
}

class _WorkspaceState extends State<Workspace> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[400],
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
            painter: MyPanter(),
          )
    );
  }
}

class MyPanter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size){
    final paint = Paint();

    canvas.drawLine(
      Offset(size.width * 1/6, size.height * 1/2),
      Offset(size.width * 5/6, size.height * 1/2),
      paint
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

