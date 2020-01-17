import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                generateNote(Colors.red, 1),
                generateNote(Colors.orange, 2),
                generateNote(Colors.yellow, 3),
                generateNote(Colors.green, 4),
                generateNote(Colors.teal, 5),
                generateNote(Colors.blue, 6),
                generateNote(Colors.deepPurple, 7),
              ],
            ),
          ),
        ),
      );

  Widget generateNote(Color color, int note) => Expanded(
        flex: 1,
        child: FlatButton(
          onPressed: () {
            playSound(note);
          },
          color: color,
        ),
      );

  void playSound(int note) {
    final player = new AudioCache();
    player.play('note$note.wav');
  }
}
