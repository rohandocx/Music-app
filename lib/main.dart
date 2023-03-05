import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int sound) {
    final player = AudioCache();
    player.play('audio/note$sound.wav');
  }

  Expanded buttonbuilder({Color color, int soundNumber}){
   return  Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playsound(soundNumber);
          // will immediately start playing
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
            buttonbuilder(color:Colors.deepPurple, soundNumber:1),
              buttonbuilder(color:Colors.lightGreen, soundNumber:2),
              buttonbuilder(color:Colors.pink, soundNumber:3),
              buttonbuilder(color:Colors.purple, soundNumber:4),
              buttonbuilder(color:Colors.green, soundNumber:5),
              buttonbuilder(color:Colors.amber, soundNumber:6),
              buttonbuilder(color:Colors.cyanAccent, soundNumber:7),
    ],
          ),
        ),
      ),
    );
  }
}
