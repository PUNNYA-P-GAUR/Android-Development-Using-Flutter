//import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: app1(),
  ));
}

var style = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

class app1 extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.orangeAccent,
            appBar: AppBar(
              backgroundColor: Colors.orangeAccent,
              elevation: 1,
              centerTitle: true,
              title: Text("D E V E L O P E R S  C O N T E X T"),
            ),
            body: SafeArea(
              child: ListView(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Colors.brown,
                    child: Row(children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      ),
                      Image(
                        image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2017/01/31/21/22/avatar-2027363__340.png'),
                        width: 100,
                        height: 100,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'AKSHAT SAXENA'
                        '\n'
                        'akshatsaxenacs.'
                        '\n'
                        'aiml20@gla.ac.in',
                        style: style,
                      )
                    ]),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Colors.brown,
                    child: Row(children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      ),
                      Image(
                        image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2017/01/31/21/22/avatar-2027363__340.png'),
                        width: 100,
                        height: 100,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'NIKHIL GARG'
                        '\n'
                        'nikhil.gla_cs.'
                        '\n'
                        'aiml20@gla.ac.in',
                        style: style,
                      )
                    ]),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Colors.brown,
                    child: Row(children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      ),
                      Image(
                        image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2017/01/31/21/22/avatar-2027363__340.png'),
                        width: 100,
                        height: 100,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'PRAKHAR VERMA'
                        '\n'
                        'prakhar.verma_cs.'
                        '\n'
                        'aiml20@gla.ac.in',
                        style: style,
                      )
                    ]),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Colors.brown,
                    child: Row(children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      ),
                      Image(
                        image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2017/01/31/21/22/avatar-2027363__340.png'),
                        width: 100,
                        height: 100,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'VIVEK KUMAR'
                        '\n'
                        'vivek.kumar2_'
                        '\n'
                        'cs21@gla.ac.in',
                        style: style,
                      )
                    ]),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Colors.brown,
                    child: Row(children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      ),
                      Image(
                        image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2017/01/31/21/22/avatar-2027363__340.png'),
                        width: 100,
                        height: 100,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'PUNNYA PRASOON GAUR' '\n' 'gaurpunnya.02@gmail.com',
                        style: style,
                      )
                    ]),
                  )
                ],
              ),
            )));
  }
}
