import 'package:flutter/material.dart';
import 'package:first_app/style_text.dart';

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
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          // begin: first coordinate of the gradient
          begin: Alignment.topCenter,
          // end: second coordinate of the gradient
          end: Alignment.bottomCenter,
          colors: [Color(0xFF6A1B9A), Color(0xFF4527A0)],
        ),
      ),
      child: const Center(child: StyleText()),
    );
  }
}
