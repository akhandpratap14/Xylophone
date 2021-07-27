import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded Buildkey(int Num, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(Num);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Buildkey(1, Colors.red),
              Buildkey(1, Colors.orange),
              Buildkey(1, Colors.yellow),
              Buildkey(1, Colors.green),
              Buildkey(1, Colors.teal),
              Buildkey(1, Colors.blue),
              Buildkey(1, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
