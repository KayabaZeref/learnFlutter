import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        // Use Container can create gradient background
        // Use BoxDecoration to create gradient background
        body: GradientContainer(Color(0xFF614385), Color(0xFF516395)),
      ),
    ),
  );
}
