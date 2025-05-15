import 'package:flutter/material.dart';
import 'dart:math';

// Use randomizer to create a random number generator
// Use Random to create a random number generator
// Why put here? Because it will make Random() only once
final randomizer = Random();

class RollerDice extends StatefulWidget {
  const RollerDice({super.key});

  @override
  State<RollerDice> createState() {
    return _RollerDiceState();
  }
}

// Use StatefulWidget to create a widget that requires state management
//underscore means private
class _RollerDiceState extends State<RollerDice> {
  var randomDiceNumber = randomizer.nextInt(6) + 1; // + 1 to make it 1-6

  @override
  Widget build(context) {
    return Column(
      // Use Column to create a vertical layout
      // Use mainAxisSize.min to center the children
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$randomDiceNumber.png', width: 200),
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
    );
  }

  // Use rollDice to create a function that will be called when the button is pressed
  void rollDice() {
    // Use setState to reload the build method and update the UI
    setState(() {
      // Use setState to update the state of the widget
      randomDiceNumber = randomizer.nextInt(6) + 1;
    });
  }
}
