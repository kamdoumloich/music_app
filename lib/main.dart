import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MusicApp());
}

class MusicApp extends StatelessWidget {
  const MusicApp({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildButton({required Color buttonColor, required int soundNumber}) {
    return Expanded(
      child: Card(
        color: buttonColor,
        child: TextButton(
          onPressed: () {
            playSound(soundNumber);
          },
          child: Text(
            'Sound $soundNumber',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildButton(buttonColor: Colors.red, soundNumber: 1),
              buildButton(buttonColor: Colors.deepOrangeAccent, soundNumber: 2),
              buildButton(buttonColor: Colors.amberAccent, soundNumber: 3),
              buildButton(buttonColor: Colors.blueAccent, soundNumber: 4),
              buildButton(buttonColor: Colors.blue, soundNumber: 5),
              buildButton(buttonColor: Colors.grey, soundNumber: 6),
              buildButton(buttonColor: Colors.blueGrey, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
