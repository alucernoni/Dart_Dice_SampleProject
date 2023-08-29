import 'package:flutter/material.dart';
import 'package:dice_project/gradient_container_class.dart';

void main() {
  runApp(
     const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 19, 92, 101),
          Color.fromARGB(255, 162, 204, 210)
        ),
      ),
    ),
  );
}
