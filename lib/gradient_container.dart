import 'package:flutter/material.dart';
// import 'package:first_app/style_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

// var gradienColorsOne = Colors.blue;
// var gradienColorsTwo = Colors.purple;

// Use GradientContainer to create a gradient background
class GradientContainer extends StatelessWidget {
  // Use constructor to initialize the widget
  // Use super.key to pass the key to the parent class
  GradientContainer(this.gradienColorsOne, this.gradienColorsTwo, {super.key});
  // Use StatelessWidget to create a widget that does not require state management
  final Color gradienColorsOne;
  final Color gradienColorsTwo;
  var activeDiceImage = 'dice-2.png';

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
      child: Center(
        child: Column(
          // Use Column to create a vertical layout
          // Use mainAxisSize.min to center the children
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/$activeDiceImage', width: 200),
            // use SizedBox to create space between the image and the button
            const SizedBox(height: 20),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                // // padding: Use EdgeInsets to create padding on top
                // padding: const EdgeInsets.only(top: 20),
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: Text('Roll Dice'),
            ),
          ],
        ),
      ),
    );
  }

  // Use rollDice to create a function that will be called when the button is pressed
  void rollDice() {
    activeDiceImage = "dice-3.png";
  }
}
