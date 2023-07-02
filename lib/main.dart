import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BallPage(),
    );
  }
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900], // Dark blue backgroundColor
        title: Text('Ask Me Anything'), // Title of the AppBar
      ),
      backgroundColor: Colors.blue, // Background color of the Scaffold
      body: Center(
        child: Ball(), // Using the new Ball Stateful Widget here
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 0; // Variable to hold the ball number, initialized with 0

  void _generateRandomBallNumber() {
    // Generate a new random ballNumber between 1 and 5
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
      print(ballNumber);
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        _generateRandomBallNumber(); // Call the method to generate random ballNumber
      },
      child: Image.asset('images/ball$ballNumber.png'), // Use string interpolation
    );
  }
}
