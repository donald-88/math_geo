import 'package:flutter/material.dart';
import '../../../widgets/option.dart';

class TransFormationsLevels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Option(
              text: 'Level 1',
              route: () => Navigator.pushNamed(
                  context, './pages/topics/transformations/main'),
              width: 200),
          Option(text: 'Level 2', route: () {}, width: 200),
          Option(text: 'Level 3', route: () {}, width: 200),
          Option(text: 'Level 3', route: () {}, width: 200),
        ],
      ),
    );
  }
}

class Levels {
  String level;
  String question;
  String rating;
  List<Offset> coordinatesTos;
  List<Offset> coordinatesToAns;

  Levels(
      {required this.level,
      required this.question,
      required this.rating,
      required this.coordinatesTos,
      required this.coordinatesToAns});
}
