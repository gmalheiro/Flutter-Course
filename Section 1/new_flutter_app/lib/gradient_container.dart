import 'package:flutter/material.dart';

import 'package:new_flutter_app/styled_text.dart';

Alignment startAlignment = Alignment.topLeft;
Alignment endALignmentOpaBl = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colorA, this.colorB, {super.key});

  final Color colorA;
  final Color colorB;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [colorA, colorB],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
      child: const Center(child: StyledText('Hello World! Flutter')),
    );
  }
}
