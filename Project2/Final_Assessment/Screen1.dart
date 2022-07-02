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
