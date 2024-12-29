import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  Widget buildAudioButton({
    required int soundNumber,
    required Color backgroundColor,
  }) {
    return Expanded(child:
    TextButton(
      onPressed: () {
        final player = AudioPlayer();
        player.play(AssetSource('note$soundNumber.wav')); // Play the audio file
      },
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor, // Button background color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero, // Sharp edges
        ),
      ),
      child: Text(''),
    )
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
                children: [
                  buildAudioButton(soundNumber: 1,backgroundColor: Colors.red),
                  buildAudioButton(soundNumber: 2,backgroundColor: Colors.orange),
                  buildAudioButton(soundNumber: 3,backgroundColor: Colors.yellow),
                  buildAudioButton(soundNumber: 4,backgroundColor: Colors.green),
                  buildAudioButton(soundNumber: 5,backgroundColor: Colors.teal),
                  buildAudioButton(soundNumber: 6,backgroundColor: Colors.blue),
                  buildAudioButton(soundNumber: 7,backgroundColor: Colors.purple),
                ],
              ),
        ),
      ),
    );
  }
}


