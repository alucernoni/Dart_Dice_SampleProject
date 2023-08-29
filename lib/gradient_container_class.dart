import 'package:flutter/material.dart';
import 'package:dice_project/text_widget.dart';

class GradientContainer extends StatelessWidget {

  GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;
  var currentDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    // code to roll dice
    currentDiceImage = 'assets/images/dice-4.png';
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              currentDiceImage,
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 172, 199, 173),
                  textStyle: const TextStyle(
                    fontSize: 28,
                  ),
                ),
                child: const Text('ROLL THIS BISH')),
          ],
        ),
      ),
    );
  }
}
