import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Widget buildKey({int trackNumber, Color containerColor}) {
    return Expanded(
      child: Container(
        color: containerColor,
        child: FlatButton(
          onPressed: () {
            final player = AudioCache();
            player.play('note$trackNumber.wav');
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(containerColor: Colors.red, trackNumber: 1),
              buildKey(containerColor: Colors.orange, trackNumber: 2),
              buildKey(containerColor: Colors.yellow, trackNumber: 3),
              buildKey(containerColor: Colors.green, trackNumber: 4),
              buildKey(containerColor: Colors.blue, trackNumber: 5),
              buildKey(containerColor: Colors.indigo, trackNumber: 6),
              buildKey(containerColor: Colors.purple, trackNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
