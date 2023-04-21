import "package:flutter/material.dart";
import 'package:like_button/like_button.dart';

void main() {
  runApp(MaterialApp(
    home: AnimatedLikeButton(),
    darkTheme: ThemeData(brightness: Brightness.dark),
    debugShowCheckedModeBanner: false,
  ));
}

class AnimatedLikeButton extends StatefulWidget {
  const AnimatedLikeButton({Key? key}) : super(key: key);

  @override
  State<AnimatedLikeButton> createState() => _AnimatedLikeButtonState();
}

// void func() {
//   if (count == 0) {
//     count++;
//     // } else {
//     //   count = count;
//   }
// }

class _AnimatedLikeButtonState extends State<AnimatedLikeButton> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: const Text(
          'L I K E B U T T O N',
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0,
      ),
      body: Center(
        child: Container(
            child: LikeButton(
          likeCount: 0,
          size: 70,
          circleSize: 300,
          bubblesSize: 300,
          likeCountAnimationType: LikeCountAnimationType.part,
          animationDuration: Duration(milliseconds: 1000),
          countPostion: CountPostion.bottom,
        )),
      ),
    );
  }
}
