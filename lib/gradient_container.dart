import 'package:flutter/material.dart';
import 'package:first_app/roller_dice.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

// var gradienColorsOne = Colors.blue;
// var gradienColorsTwo = Colors.purple;

// Use GradientContainer to create a gradient background
class GradientContainer extends StatelessWidget {
  // Use constructor to initialize the widget
  // Use super.key to pass the key to the parent class
  const GradientContainer(
    this.gradienColorsOne,
    this.gradienColorsTwo, {
    super.key,
  });
  // Use StatelessWidget to create a widget that does not require state management
  final Color gradienColorsOne;
  final Color gradienColorsTwo;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [gradienColorsOne, gradienColorsTwo],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      // child: Center(child: StyleText("Hello, World!")),
      child: Center(child: RollerDice()),
    );
  }
}
