import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

   Expanded buildKey({Color color, int sound}){
      return Expanded(
        child: Container(
          color: color,
          child: TextButton(
            onPressed: (){
              final player = AudioCache();
              player.play("note$sound.wav");
            },child: Text("", style: TextStyle(color: Colors.black),),
          ),),
      );
    }
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, sound: 1),
              buildKey(color: Colors.orange, sound: 2),
              buildKey(color: Colors.yellow, sound: 3),
              buildKey(color: Colors.green, sound: 4),
              buildKey(color: Colors.blue.shade200, sound: 5),
              buildKey(color: Colors.blue, sound: 6),
              buildKey(color: Colors.blue.shade900, sound: 7),
            ],
          ),
          ),
        ),
      );

  }
}
