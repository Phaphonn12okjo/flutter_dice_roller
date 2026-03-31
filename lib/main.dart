import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      // const here tells Flutter this whole branch of the tree won't change at startup
      debugShowCheckedModeBanner:
          false, // Optional: Removes the "debug" banner in the corner
      home: Scaffold(
        // Scaffold is the "canvas" or "skeleton" that gives your app a background.
        body: GradientContainer(
          Colors.blueAccent,
          Colors.indigo,
        ),
      ),
    ),
  );
}
 