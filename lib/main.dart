import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff26a7fd),
        appBar: AppBar(
          title: Center(child: Text('Ask me anything')),
          backgroundColor: Color(0xff014277),
        ),
        body: Magic8ball(),
      ),
    ),
  );
}

class Magic8ball extends StatefulWidget {
  @override
  _Magic8ballState createState() => _Magic8ballState();
}

class _Magic8ballState extends State<Magic8ball> {
  //var leftDiceNumber = 1;
  var answer = Random().nextInt(4) + 1; // Value is >= 0 and < 5.

  void changeFace() {
    answer = Random().nextInt(4) + 1; // Value is >= 50 and < 150.
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: TextButton(
                onPressed: () {
                  Text('Answer is...',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20));
                  print('Answer button pressed');
                  setState(() {
                    //EVENTO CHE RICHIAMA "Widget build" PER RICREARE L'INTERFACCIA UTENTE
                    //leftDiceNumber = 6;
                    changeFace();
                    // Value is >= 50 and < 150.
                    print('Il codice ID risposta vale: $answer');
                  });
                },
                child: Image.asset(
                  'images/ball$answer.png',
                ),
              ),
              flex: 1, //define proportional size
            ),
          ]),
    );
  }
}

//------------------------------------------------------------------------//
/*
class DicePage extends StatelessWidget {
  var leftDiceNumber = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: TextButton(
                onPressed: () {
                  Text('LEFT button pressed',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20));
                  print('LEFT button pressed');
                },
                child: Image.asset(
                  'images/dice$leftDiceNumber.png',
                ),
              ),
              flex: 1, //define proportional size
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  Text('RIGHT button pressed',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20));
                  print('RIGHT button pressed');
                },
                child: Image.asset(
                  'images/dice6.png',
                ),
              ),
              flex: 1, //define proportional size
            ),
          ]),
    );
  }
}

*/

/*
Image(
              //margin: EdgeInsets.only(top: 200),
              image: AssetImage('images/dice1.png'),
              width: 150,
            ),
            SizedBox(width: 20),
            Image(
              //margin: EdgeInsets.only(top: 200),
              image: AssetImage('images/dice6.png'),
              width: 150,
            ),
*/
