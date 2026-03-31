import 'dart:math'; // Required for Random()
import 'package:flutter/material.dart';

// We define the Random object OUTSIDE the class.
// Why? Because we only need one "randomizer" for the whole app session.
// Putting it inside the 'build' method would create a new randomizer every time the UI refreshes (waste of memory).
final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    // StatefulWidget always needs a companion "State" class to handle changing data.
    return _DiceRollerState();
  }
}

// The '_' means this class is PRIVATE. It can only be used inside this file.
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll =
      1; // This variable "lives" as long as the widget is on screen.

  void rollDice() {
    // CRITICAL: setState() tells Flutter to re-run the 'build' method below.
    // Without setState, the number would change in memory, but the screen wouldn't update!
    setState(() {
      currentDiceRoll =
          randomizer.nextInt(6) + 1; // nextInt(6) gives 0-5, so we +1 for 1-6.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisSize.min: This is vital!
      // It tells the Column "Don't take the whole screen, only take as much space as your children need."
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          // String Interpolation: We use $ to inject our variable into the file path.
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ), // Acts as a transparent spacer (margin) between image and button.
        ElevatedButton(
          onPressed:
              rollDice, // Notice: No parentheses () here! We are "pointing" to the function.
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amberAccent,
            foregroundColor: Colors.black, // Color of the text on the button.
            textStyle: const TextStyle(fontSize: 24),
          ),
          child: const Text('Roll Dice Now!'),
        ),
      ],
    );
  }
}
