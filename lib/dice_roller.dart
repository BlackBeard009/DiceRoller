import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {

  Image activeImage = Image.asset('assets/images/dice-2.png', width: 200,);
  void rollDice() {
    int randomNumber = Random().nextInt(6) + 1;
    setState(() {
      activeImage = Image.asset('assets/images/dice-$randomNumber.png', width: 200,);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column (
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          activeImage,
          const SizedBox(height: 20,),
          TextButton(onPressed: rollDice, child: const Text('Roll Dice', style: TextStyle(fontSize: 20, color: Colors.white))),
        ],
      )
    );
  }

}