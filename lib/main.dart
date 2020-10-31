import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Ask Me Something'),
          ),
          body: AskMeSomething(),
        ),
      ),
    );

class AskMeSomething extends StatefulWidget {
  @override
  _AskMeSomethingState createState() => _AskMeSomethingState();
}

class _AskMeSomethingState extends State<AskMeSomething> {
  var ballNumber = 2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
          onPressed: () {
            setState(() {
              ballNumber = 1 + Random().nextInt(5);
            });
          },
          child: Image.asset('images/ball$ballNumber.png')),
    );
  }
}
