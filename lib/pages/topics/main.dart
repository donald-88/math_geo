import 'package:flutter/material.dart';
import 'package:math_geometry/widgets/customAppbar.dart';
import 'package:math_geometry/widgets/option.dart';

class Topics extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: 
          [
            Container(
            color: Colors.teal,
            child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Option(
                      width: 200,
                      text: 'Transformations',
                      route: () => Navigator.pushNamed(context, './pages/topics/transformations/levels'))
                  ],
                ),
              ),
          ),
          CustomAppBar()
        ],
    );
  }
}