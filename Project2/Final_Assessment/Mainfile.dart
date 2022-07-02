import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pp5/screen3.dart';
import 'package:pp5/screen1.dart';

void main() {
  runApp(MaterialApp(
    home: screen1(),
    debugShowCheckedModeBanner: false,
  ));
}

class screen1 extends StatelessWidget {
  screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(207, 187, 132, 180),
        body: SafeArea(
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'Training',
                  style: TextStyle(
                      fontSize: 50,
                      color: Color.fromARGB(245, 93, 12, 144),
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  child: Image(
                    image: NetworkImage(
                        'https://cdn.pixabay.com/photo/2020/06/06/22/00/online-5268393__340.png'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return screen2();
                      }),
                    );
                  },
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        color: Color.fromARGB(245, 93, 12, 144)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

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

class screen3 extends StatefulWidget {
  const screen3({Key? key}) : super(key: key);
  @override
  State<screen3> createState() => _screen3();
}

// void main() {
//   runApp(
//     MaterialApp(
//       home: screen3(),
//     ),
//   );
// }

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
