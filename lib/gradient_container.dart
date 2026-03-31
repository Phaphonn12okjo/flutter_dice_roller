import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

// Global variables: Alignment constants used to avoid typos and keep code clean.
const beginAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // Constructor: Takes two colors. We use 'final' because these values
  // are set when the widget is created and never change again.
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ], // Wraps our two colors into a List for the gradient.
          begin: beginAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        // DiceRoller is a separate widget to keep our code modular (easier to read).
        child: DiceRoller(),
      ),
    );
  }
}
