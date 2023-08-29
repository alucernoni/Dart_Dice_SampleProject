import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    // code to roll dice
    currentDiceImage = 'assets/images/dice-4.png';
  }

  @override
  Widget build(context) {
    return Column(
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
    );
  }
}
