import 'package:flutter/material.dart';
//import 'package:first_app/style_text.dart';

// final or const startAlignment = Alignment.topCenter;
// final or const endAlignment = Alignment.bottomCenter;

var startAlignment = Alignment.topCenter;
var endAlignment = Alignment.bottomCenter;
//var gradientColors = ;

// StatelessWidget is a widget that need when you define your own widget
// ignore: must_be_immutable
class GradientContainer extends StatelessWidget {
  // super(key: key). First key call from StatelessWidget(super). Second key call from Container
  // First solution
  //GradientContainer({Key? key}) : super(key: key);
  // Second solution
  GradientContainer(this.firstColor, this.secondColor, {super.key});

  final Color firstColor;
  final Color secondColor;
  var activeDiceImage = 'assets/images/dice-2.png';

  void rollDice() {
    activeDiceImage = 'assets/images/dice-4.png';
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // begin: first coordinate of the gradient
          begin: startAlignment,
          // end: second coordinate of the gradient
          end: endAlignment,
          colors: [firstColor, secondColor],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(activeDiceImage, width: 150, height: 150),
            const SizedBox(height: 20),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                // padding: EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 28),
              ),
              child: Text("Roll The Dice"),
            ),
          ],
        ),
      ),
      // StyleText("Hello Zeref")),
    );
  }
}
