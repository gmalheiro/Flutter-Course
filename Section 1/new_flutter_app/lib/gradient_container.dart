import 'package:flutter/material.dart';

import 'package:new_flutter_app/styled_text.dart';

Alignment startAlignment = Alignment.topLeft;
Alignment endALignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colorA, this.colorB, {super.key});

  const GradientContainer.purple({super.key})
      : colorA = Colors.deepPurple,
        colorB = Colors.indigo;

  final Color colorA;
  final Color colorB;

  void rollDice() {}

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [colorA, colorB],
              begin: startAlignment,
              end: endALignment)),
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/dice-1.png',
            width: 200,
          ),
          ElevatedButton(
            onPressed: rollDice,
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text("Roll Dice"),
          )
        ],
      )),
    );
  }
}
