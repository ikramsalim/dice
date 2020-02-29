import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: DicePage(),
      ),
    ),
  );
}
//create a stateful widget; shortcut is  stful

class DicePage extends StatelessWidget {
  //make dice image change anytime a user presses
  //create a var for the left and right

  @override
  Widget build(BuildContext context) {
    //make dice image change anytime a user presses
    //create a var for the left and right

    int leftDiceNumber = 6;

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: () {
                  print('Left button got pressed');
                },
                child: Image.asset('images/dice$leftDiceNumber.png')),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('Right button got pressed');
              },
              child: Image.asset('images/dice2.png'),
            ),
          ),
        ],
      ),
    );
  }
}
