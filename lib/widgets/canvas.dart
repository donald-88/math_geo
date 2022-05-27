
import 'package:flutter/material.dart';

class Workspace extends StatefulWidget {
  const Workspace({Key? key}) : super(key: key);

  @override
  State<Workspace> createState() => _WorkspaceState();
}


class DrawnLine{
  final List<Offset> path;

  DrawnLine(this.path);
}

class _WorkspaceState extends State<Workspace> {

  final _offsets = <Offset>[];
  final _init = <Offset>[];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanStart: onPanStart,
      onPanUpdate: onPanUpdate,
      onPanEnd: onPanEnd,
      child: RepaintBoundary(
        child: Container(
          color: Colors.grey[400],
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: CustomPaint(
                painter: MyPanter(),
              )
        ),
      ),
    );
  }
  //when ugly dude taps the screen function
  void onPanStart(DragStartDetails details){
  print("Ugly dude has started drawing");

  final renderbox = context.findRenderObject() as RenderBox;
  final point = renderbox.globalToLocal(details.globalPosition);
  print(point);

  setState((){
    _init.add(point);
  });
}

//ugly dude doesnt want to let go of the screen
void onPanUpdate(DragUpdateDetails details){
  final renderbox  = context.findRenderObject() as RenderBox;
  final point = renderbox.globalToLocal(details.globalPosition);
  print(point);

  
  setState(() {
    _offsets.add(point);
  });
  
}

//ugly dude finally lets go
void onPanEnd(DragEndDetails details){
  print("Ugly dude ended drawing");
}

}

class MyPanter extends CustomPainter {

  final offsets;
  final init;
  MyPanter({this.offsets, this.init});


  @override
  void paint(Canvas canvas, Size size){
    Paint paint = Paint()..style = PaintingStyle.stroke;

    Path path = Path();

    if(init != null && offsets != null){
      path.moveTo(init[0].dx, init[0].dy);
      path.lineTo(offsets[offsets.length -1].dx, offsets[offsets.length -1].dy);
    }

    canvas.drawPath(
      path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}





