import 'package:flutter/material.dart';

import 'package:new_flutter_app/styled_text.dart';

Alignment startAlignment = Alignment.topLeft;
Alignment endALignmentOpaBl = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 26, 2, 80),
        Color.fromARGB(255, 45, 7, 98)
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      child: const Center(child: StyledText()),
    );
  }
}
