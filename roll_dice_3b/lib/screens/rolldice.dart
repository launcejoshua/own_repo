import 'dart:math';

import 'package:flutter/material.dart';

class RollDiceScreen extends StatefulWidget {
  RollDiceScreen({super.key});

  @override
  State<RollDiceScreen> createState() => _RollDiceScreenState();
}

class _RollDiceScreenState extends State<RollDiceScreen> {
  int activeDiceFace = 6;
  List<String> diceImage = [
    'https://upload.wikimedia.org/wikipedia/commons/2/2c/Alea_1.png',
    'https://upload.wikimedia.org/wikipedia/commons/b/b8/Alea_2.png',
    'https://upload.wikimedia.org/wikipedia/commons/2/2f/Alea_3.png',
    'https://upload.wikimedia.org/wikipedia/commons/8/8d/Alea_4.png',
    'https://upload.wikimedia.org/wikipedia/commons/5/55/Alea_5.png',
    'https://upload.wikimedia.org/wikipedia/commons/f/f4/Alea_6.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/2-Dice-Icon.svg/800px-2-Dice-Icon.svg.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.blue.shade500,
            Colors.deepPurple.shade800,
          ],
        )),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Roll Dice',
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Image.network(
                diceImage[activeDiceFace],
                height: 300,
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  print('button pressed');
                  //0-5
                  var ranNum = Random().nextInt(6);
                  setState(() {
                    activeDiceFace = ranNum;
                  });
                },
                child: const Text(
                  'Roll!',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
