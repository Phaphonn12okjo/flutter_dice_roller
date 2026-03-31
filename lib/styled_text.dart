import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  // Positional argument: 'text' must be provided first.
  const StyledText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 28,
        color: Colors.white,
      ),
    );
  }
}
