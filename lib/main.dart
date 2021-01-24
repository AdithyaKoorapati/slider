import 'package:flutter/material.dart';
import 'package:slider/Slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Sliders(),
    );
  }
}
