import 'package:flutter/material.dart';
import '../../../widgets/option.dart';

class TransFormationsLevels extends StatelessWidget {

  List<Levels> levels = [
    Levels(level: '1', question: 'Rotate the triangle 45 degrees about the vertex A', rating: '3/3'),
    Levels(level: '2', question: 'Rotate the triangle 30 degrees about the vertex C', rating: '3/3'),
    Levels(level: '3', question: 'Rotate the rectangle 45 degrees about the vertex B', rating: '3/3'),
    Levels(level: '4', question: 'Rotate the quadlateral 60 degrees about the vertex A', rating: '3/3'),
    Levels(level: 5', question: 'Rotate the triangle 20 degrees about the vertex A', rating: '3/3'),
    Levels(level: 6, question: 'Rotate the triangle 44 degrees about the vertex B', rating: '3/3'),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      child: GridView.builder(
        itemCount: levels.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context , index) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Option(
                    text: 'Level ${levels[index].level}',
                    route: () => Navigator.pushNamed(
                        context, './pages/topics/transformations/main', arguments: {
                          levels[index]
                        }),),
          );
        }
      ),
    );
  }
}

class Levels {
  String level;
  String question;
  String rating;

  Levels(
      {required this.level,
      required this.question,
      required this.rating});
}
