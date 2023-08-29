import 'package:flutter/material.dart';
import 'package:dice_project/text_widget.dart';

class GradientContainer extends StatelessWidget {
  // const GradientContainer({super.key, required this.colors});

  // final List<Color> colors;

  // @override
  // Widget build(context) {
  //   return Container(
  //     decoration: BoxDecoration(
  //       gradient: LinearGradient(
  //         colors: colors,
  //         begin: Alignment.topLeft,
  //         end: Alignment.bottomRight,
  //       ),
  //     ),
  //     child: const Center(
  //       child: TextWidget('hello there!'),
  //     ),
  //   );
  // }

  // const GradientContainer(this.color1, this.color2, {super.key});

  // can make multiple constructor functions, like this one. in main.dart would simply pass body: GradientContainer.purple()
  // const GradientContainer.purple({super.key})
  //     : color1 = Color.fromARGB(255, 63, 25, 128),
  //       color2 = Color.fromARGB(255, 167, 131, 229);

  // final Color color1;
  // final Color color2;

  // @override
  // Widget build(context) {
  //   return Container(
  //     decoration: BoxDecoration(
  //       gradient: LinearGradient(
  //         colors: [color1, color2],
  //         begin: Alignment.topLeft,
  //         end: Alignment.bottomRight,
  //       ),
  //     ),
  //     child: const Center(
  //       child: TextWidget('hello there!'),
  //     ),
  //   );
  // }

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
              'assets/images/dice-1.png',
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                // onPressed: () {
                //  anonymous function code
                // },
                onPressed: rollDice,
                style: TextButton.styleFrom(
                  // padding:  const EdgeInsets.only(top: 200),
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
