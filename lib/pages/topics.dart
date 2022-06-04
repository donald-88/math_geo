import 'package:flutter/material.dart';

class Topics extends StatelessWidget {
  const Topics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      child: Center(
          child: OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                  primary: Colors.grey[300],
                  side: BorderSide(color: Color.fromARGB(224, 224, 224, 225)),
                  padding: EdgeInsets.all(40)
                  ),
                  onPressed: (){
          Navigator.pushNamed(context, './pages/workspace');
          },
                  icon: Icon(Icons.rotate_90_degrees_ccw),
                  label: Text('Rotation')),
        ),
    );
  }
}