import 'package:flutter/material.dart';


class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.teal,
        child: Center(
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.all(30),
              primary: Colors.grey[300],
              side: BorderSide(color: Color.fromARGB(224, 224, 224, 225))
            ),
            onPressed: (){
              Navigator.pushNamed(context, './pages/topics');
            },
            child: Text('PLAY')),
        ),
      ),
    );
  }
}