import 'package:flutter/material.dart';
import '../../../widgets/option.dart';

class TransFormationsLevels extends StatelessWidget {

  List<String> levels = [
    '1','2','3'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Option(text: 'Level 1', route: () => Navigator.pushNamed(context, './pages/topics/transformations/main'), width: 200),
          Option(text: 'Level 2', route: (){}, width: 200),
          Option(text: 'Level 3', route: (){}, width: 200),
          Option(text: 'Level 3', route: (){}, width: 200),
        ],
      ),
    );
    
  }
}

class Levels{
  String level;
  String question;

  Levels({required this.level, required this.question});
}