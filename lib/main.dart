import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePace(),
      ),
    ),
  );
}

class DicePace extends StatefulWidget {
  @override
  _DicePaceState createState() => _DicePaceState();
}

class _DicePaceState extends State<DicePace> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  void chageNumberOfDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;

      print('Pressed left button ($leftDiceNumber)');
      print('Pressed right number ($rightDiceNumber)');
    });
  }

  @override
  Widget build(BuildContext context) {
    // leftDiceNumber = 4; // This will affect to setStage() this will take 4 in any case

    return SafeArea(
      child: Center(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton(
                    onPressed: () =>
                        chageNumberOfDice(), // if just changeNumberofDice -> nothing happen
                    child: Image.asset('images/dice$leftDiceNumber.png')),
              ),
            ),
            // SizedBox(
            //   width: 20,
            // ),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FlatButton(
                    onPressed: chageNumberOfDice,
                    child: Image.asset('images/dice$rightDiceNumber.png'),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
