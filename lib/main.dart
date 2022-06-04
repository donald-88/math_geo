import 'package:flutter/material.dart';
import 'package:math_geometry/pages/landing.dart';
import 'pages/topics.dart';
import 'pages/workspace.dart';

void main() => runApp(MaterialApp(
  home: LandingPage(),
  routes: {
    './pages/landing':(context) => LandingPage(),
    './pages/topics': (context) => Topics(),
    './pages/workspace': (context) => Workspace(),
  },
));