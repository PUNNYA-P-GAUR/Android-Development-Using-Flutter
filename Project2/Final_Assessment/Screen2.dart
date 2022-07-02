
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pp5/screen3.dart';
import 'package:pp5/screen1.dart';
final TextEditingController _name = TextEditingController();
final TextEditingController _email = TextEditingController();

class screen2 extends StatefulWidget {
  const screen2({Key? key}) : super(key: key);
  @override
  State<screen2> createState() => _screen2();
}

// void main() {
//   runApp(screen2());
// }

// ignore: camel_case_types
class _screen2 extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: Padding(
                  padding: EdgeInsets.all(2.0),
                  child: ListView(children: [
                    Text("Login",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    TextField(
                      maxLength: 30,
                      controller: _name,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: ("Student Name"),
                          icon: Icon(Icons.person)),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      maxLength: 30,
                      controller: _email,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: ("Email ID"),
                          icon: Icon(Icons.email_rounded)),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(children: [
                        Expanded(
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return screen3();
                                }));
                              },
                              child: Text('Login',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontStyle: FontStyle.normal,
                                  ))),
                        ),
                      ]),
                    ),
                  ])),
            )));
  }
}
