import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(home: DicePage()),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var num = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text(
          'Dicee',
          style: TextStyle(color: Colors.red),
        ),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onPressed: () {
                    changeNumber();
                  },
                  child: Image.asset('images/dice$num.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Image.asset('images/dice$num.png'),
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onPressed: () {
                    changeNumber();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void changeNumber() {
    setState(() {
      num = Random().nextInt(6) + 1;
      print(num);
    });
  }
}
