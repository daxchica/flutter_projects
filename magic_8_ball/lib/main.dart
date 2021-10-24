import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Ask Me Anything'),
          backgroundColor: Colors.indigo[800],
        ),
        body: const MyBall(),
      ),
    ),
  );
}

class MyBall extends StatefulWidget {
  const MyBall({Key? key}) : super(key: key);

  @override
  _MyBallState createState() => _MyBallState();
}

class _MyBallState extends State<MyBall> {
  int ballNumber = 1;
  void changeBall() {
    setState(() {
      ballNumber = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
            onPressed: () {
              setState(() {
                changeBall();
              });
            },
            child: Image.asset('images/ball$ballNumber.png'),
          ),
        ),
      ),
    );
  }
}
