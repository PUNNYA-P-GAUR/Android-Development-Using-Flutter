import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() {
  runApp(MaterialApp(
    home: pphome(),
  ));
}

class pphome extends StatefulWidget {
  const pphome({Key? key}) : super(key: key);

  @override
  State<pphome> createState() => _pphomeState();
}

class _pphomeState extends State<pphome> {
  var disptext = "";
  TextEditingController principalcontroller = TextEditingController();
  TextEditingController ratecontroller = TextEditingController();
  TextEditingController timecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SI Calculator'),
          backgroundColor: Colors.blue,
        ),
        body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: ListView(children: [
                const Image(
                  image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2019/09/27/16/41/rupee-4508890__340.jpg'),
                  height: 250,
                  width:500,
                  alignment: Alignment.center,
                ),
               const SizedBox(
                  height: 20,
                ),
                TextField(
                  maxLength: 20,
                  controller: principalcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(10),
                            left: Radius.circular(10))),
                    labelText: 'Pricipal Amount',
                    hintText: 'Enter Princimal AMount',
                    labelStyle: const TextStyle(fontStyle: FontStyle.normal),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  maxLength: 10,
                  controller: ratecontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(10),
                            right: Radius.circular(10))),
                    hintText: "Enter The Rate",
                    labelText: 'Rate of Interest',
                    labelStyle: TextStyle(fontStyle: FontStyle.normal),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  maxLength: 10,
                  controller: timecontroller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(10),
                              left: Radius.circular(10))),
                      labelText: 'Time',
                      hintText: 'Enter the Time '),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Cal();
                        },
                        child: const Text(
                          "Calculate",
                          style: TextStyle(fontStyle: FontStyle.normal),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => reset(),
                        child: const Text(
                          "Reset",
                          style: TextStyle(fontStyle: FontStyle.normal),
                        ),
                      ),
                    ),
                  ]),
                ),

                // Padding(
                //   padding: EdgeInsets.all(10.0),
                //   child: Text(disptext),
                Text(disptext) // )
              ]
              )
              ),
        ),
      ),
    );
  }

  void reset() {
    principalcontroller.text = "";
    ratecontroller.text = "";
    timecontroller.text = "";
    disptext = "";
  }

  void Cal() {
    setState(() {
      double principal = double.parse(principalcontroller.text);
      double rate = double.parse(ratecontroller.text);
      double time = double.parse(timecontroller.text);
      double total = principal + ((principal * rate * time) / 100);
      String res =
          "After ${time},Your investment will be worth of ${total}/- Rupees";
      disptext = res;
    }
    );
  }
}
