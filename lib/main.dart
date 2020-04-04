import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue[800],
        appBar: AppBar(
          backgroundColor: Colors.lightBlue[900],
          title: Center(
            child: Text(
              'Go ahead & Roll a DICE!',
              style: TextStyle(
                color: Colors.lightBlueAccent[100],
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1;
  int rightDiceNum = 1;

  void rollADice() {
    setState(() {
      rightDiceNum = Random().nextInt(6) + 1;
      leftDiceNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                rollADice();
              },
              child: Image.asset('images/dice$leftDiceNum.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                rollADice();
              },
              child: Image.asset('images/dice$rightDiceNum.png'),
            ),
          ),
        ],
      ),
    );
  }
}
