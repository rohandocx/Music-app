
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int sound){
    final player = AudioCache();
    player.play('audio/note$sound.wav');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
         child: Column(
           children: <Widget>[
             TextButton(
         style: TextButton.styleFrom(
           backgroundColor: Colors.blue,
         ),
               onPressed: () {
              playsound(1);
               // will immediately start playing
             },
           ),
             TextButton(
               style: TextButton.styleFrom(
                 backgroundColor: Colors.redAccent,
               ),
               onPressed: () {
                 playsound(2);
                 // will immediately start playing
               },
             ),
             TextButton(
               style: TextButton.styleFrom(
                 backgroundColor: Colors.yellowAccent,
               ),
               onPressed: () {
                 playsound(3);
                 // will immediately start playing
               },
             ),
             TextButton(
               style: TextButton.styleFrom(
                 backgroundColor: Colors.greenAccent,
               ),
               onPressed: () {
                 playsound(4);
                 // will immediately start playing
               },
             ),
             TextButton(
               style: TextButton.styleFrom(
                 backgroundColor: Colors.purpleAccent,
               ),
               onPressed: () {
                 playsound(5);
                 // will immediately start playing
               },
             ),
             TextButton(
               style: TextButton.styleFrom(
                 backgroundColor: Colors.tealAccent,
               ),
               onPressed: () {
                 playsound(6);
                 // will immediately start playing
               },
             ),
             TextButton(
               style: TextButton.styleFrom(
                 backgroundColor: Colors.blue,
               ),
               onPressed: () {
                 playsound(7);
                 // will immediately start playing
               },
             )
           ],
         ),
        ),
      ),
    );
  }
}
