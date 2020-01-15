import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              generateNote(color: Colors.red, note: 1),
              generateNote(color: Colors.orange, note: 2),
              generateNote(color: Colors.yellow, note: 3),
              generateNote(color: Colors.green, note: 4),
              generateNote(color: Colors.teal, note: 5),
              generateNote(color: Colors.blue, note: 6),
              generateNote(color: Colors.deepPurple, note: 7),
            ],
          ),
        ),
      ),
    );
  }

  Widget generateNote({Color color, int note}) {
    return Expanded(
      flex: 1,
      child: FlatButton(
        onPressed: () {
          playSound(note);
        },
        color: color,
      ),
    );
  }

  void playSound(int note) {
    final player = new AudioCache();
    player.play('note${note}.wav');
  }
}
