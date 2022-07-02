import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pp5/screen3.dart';
import 'package:pp5/screen1.dart';

class _screen3 extends State<screen3> {
  DateTime today = DateTime.now();
  Widget build(BuildContext context) {
    return (MaterialApp(
        home: Scaffold(
      backgroundColor: Color.fromARGB(207, 187, 132, 180),
      body: SafeArea(
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Hi,${_name.text}",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.normal),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Image(
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2017/12/27/21/16/background-3043837__340.jpg'),
            height: 500,
            width: 500,
          ),
          Container(
            padding: EdgeInsets.all(3.0),
            child: Text(
              "You Have Successfully Completed Hybrid Mobile App Developement Course.",
              style: TextStyle(fontWeight: FontWeight.w800,fontSize: 25),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(2.0),
            child: Text(
              "INSTRUCTOR NAME",
              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            padding: EdgeInsets.all(2.0),
            child: Text("Pankaj Kapoor",
                style:
                    TextStyle(fontWeight: FontWeight.w300, color: Colors.blue,fontSize: 20)),
          ),
          Container(
            child: Text(
              "Date ${today.day}-${today.month}-${today.year}",
              style: TextStyle(fontSize: 20),
            ),
            alignment: Alignment.bottomRight,
          ),
        ]),
      ),
    )));
  }
}
