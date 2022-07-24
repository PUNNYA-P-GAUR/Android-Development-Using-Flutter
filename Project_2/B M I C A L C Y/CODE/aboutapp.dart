//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

void main() {
  runApp(MaterialApp(
    home: app2(),
  ));
}

class app2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orangeAccent,
        appBar: AppBar(
          title: Text("A B O U T  A P P"),
          elevation: 0,
          backgroundColor: Colors.orangeAccent,
        ),
        body: Center(
            child: Text(
          "This App is bascially Created for the project purposes."
          "\n"
          "Current Version Of the App:-v1.0.0"
          "\n"
          "Build No:-1",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }
}
