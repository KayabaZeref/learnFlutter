import 'package:flutter/material.dart';

var textSize = 28.0;
var textColor = Colors.white;
// var textShow = 'Hello, World!';

class StyleText extends StatelessWidget {
  // Use constructor to initialize the widget
  // Use super.key to pass the key to the parent class
  // Use this.text to pass the text to the widget
  const StyleText(this.text, {super.key});
  // Use StatelessWidget to create a widget that does not require state management
  // Use final to create a constant variable
  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      // Use TextStyle to set text color
      // Use TextStyle to set text size
      style: TextStyle(fontSize: textSize, color: textColor),
    );
  }
}
