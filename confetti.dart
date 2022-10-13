
import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Confetti(),
  ));
}

class Confetti extends StatelessWidget {
  final con = ConfettiController();
  bool play = false;

  Confetti({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ConfettiWidget(
      confettiController: con,
      blastDirection: -pi / 2,
      maxBlastForce: 10,
      emissionFrequency: 0.1,

      // 10 paticles will pop-up at a time
      numberOfParticles: 100,

      // particles will pop-up up
      gravity: 0,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'C O N F E T T I',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.purple[250],
      ),
      body: SafeArea(
        child: Center(
          child: IconButton(
            onPressed: () {
              if (play) {
                con.stop();
              } else if (!play) {
                con.play();
              } else {
                play = !play;
              }
            },
            icon: Icon(
              Icons.celebration,
              size: 20,
              color: Colors.deepPurple[300],
            ),
          ),
        ),
      ),
    );
  }
}
