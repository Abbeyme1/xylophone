import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void musicPlayer(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Widget buildKey(int num, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          musicPlayer(num);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black38,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(1, Colors.red),
              buildKey(2, Colors.orange),
              buildKey(3, Colors.yellowAccent),
              buildKey(4, Colors.green),
              buildKey(5, Colors.blue),
              buildKey(6, Colors.indigo),
              buildKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}