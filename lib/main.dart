import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play(
      '/sounds/note$soundNumber.wav',
    );
  }
  Expanded buildKey({required int soundNumber, required Color color}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        style: TextButton.styleFrom(backgroundColor: color),
        child: const Text(""),
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
          children: [
            buildKey(soundNumber: 1, color: Colors.blue),
            buildKey(soundNumber: 2, color: Colors.red),
            buildKey(soundNumber: 3, color: Colors.pink),
            buildKey(soundNumber: 4, color: Colors.orange),
            buildKey(soundNumber: 5, color: Colors.yellow),
            buildKey(soundNumber: 6, color: Colors.orangeAccent),
            buildKey(soundNumber: 7, color: Colors.blueGrey),
          ],
        ),
      ),
    ));
  }
}
