import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Widget soundButton(Color buttonColor, int soundNumber) {
    return Expanded(
      child: FlatButton(
        color: buttonColor,
        onPressed: () {
          final player = AudioCache();
          player.play('note$soundNumber.wav');
        },
        child: Image.asset(
          'assets/ice_bear.png',
          height: 60.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              soundButton(Colors.red[200], 1),
              soundButton(Colors.orange[200], 2),
              soundButton(Colors.yellow[200], 3),
              soundButton(Colors.green[200], 4),
              soundButton(Colors.blue[200], 5),
              soundButton(Colors.indigo[200], 6),
              soundButton(Colors.purple[200], 7),
            ],
          ),
        ),
      ),
    );
  }
}
