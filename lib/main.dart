import 'package:flutter/material.dart';
import 'package:the_place_finder/pages/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:HomePage()
    );
  }
}