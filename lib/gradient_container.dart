import 'package:flutter/material.dart';
import 'package:first_app/style_text.dart';

// final or const startAlignment = Alignment.topCenter;
// final or const endAlignment = Alignment.bottomCenter;

var startAlignment = Alignment.topCenter;
var endAlignment = Alignment.bottomCenter;

// StatelessWidget is a widget that need when you define your own widget
class GradientContainer extends StatelessWidget {
  // super(key: key). First key call from StatelessWidget(super). Second key call from Container
  // First solution
  //GradientContainer({Key? key}) : super(key: key);
  // Second solution
  const GradientContainer({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // begin: first coordinate of the gradient
          begin: startAlignment,
          // end: second coordinate of the gradient
          end: endAlignment,
          colors: [Color(0xFF6A1B9A), Color(0xFF4527A0)],
        ),
      ),
      child: const Center(child: StyleText()),
    );
  }
}
