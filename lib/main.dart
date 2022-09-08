import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
//import 'api1.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: page1(),
  ));
}

var st1 = TextStyle(
    fontSize: 15, fontWeight: FontWeight.w400, color: Colors.blueAccent);

var st = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: Color.fromARGB(255, 40, 91, 116));
var progress = Container(
  margin: EdgeInsets.symmetric(vertical: 20),
  width: 200,
  height: 100,
  child: ClipRRect(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    child: LinearProgressIndicator(
      value: 0.7,
      color: Color.fromARGB(246, 9, 90, 26),
      //valueColor: AlwaysStoppedAnimation<Color>(Colors.yellowAccent),
      backgroundColor: Color(0xffD6D6D6),
    ),
  ),
); // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.horizontal.

class page1 extends StatelessWidget {
  page1({Key? key}) : super(key: key);

  getValue() async {
    http.Response list = await get(Uri.parse(
            "https://api.stockedge.com/Api/SecurityDashboardApi/GetTechnicalPerformanceBenchmarkForSecurity/5051?lang=en"))
        as Response;
    Map data = jsonDecode(list.body);
    print(data);
  }

  @override
  void initState() {
    print(getValue());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: const Text(
            'PaprClip',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
          ),
          centerTitle: true,
          elevation: 2,
        ),
        body: ListView(children: [
          Container(
              child: Column(
            children: [
              Card(
                color: Colors.grey[300],
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "OVERVIEW",
                        style: TextStyle(
                            color: Color.fromARGB(255, 112, 198, 73),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        "Sector",
                        style: st,
                      ),
                      trailing: Text(
                        "Banking Pvt",
                        style: st1,
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        "Industry",
                        style: st,
                      ),
                      trailing: Text(
                        "Bank - Private",
                        style: st1,
                      ),
                    ),
                    ListTile(
                        leading: Text(
                          "Market Cap.",
                          style: st,
                        ),
                        trailing: Text(
                          "8271751073484.4",
                          style: st1,
                        )),
                    ListTile(
                        leading: Text(
                          "Enterprise Value(EV)",
                          style: st,
                        ),
                        trailing: Text(
                          "-",
                          style: st1,
                        )),
                    ListTile(
                      leading: Text(
                        "Book Value/Share",
                        style: st,
                      ),
                      trailing: Text(
                        "463.3985",
                        style: st1,
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        "PEG Ratio",
                        style: st,
                      ),
                      trailing: Text(
                        "1.0405389212746294",
                        style: st1,
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        "Dividend Yeild",
                        style: st,
                      ),
                      trailing: Text(
                        "1.043",
                        style: st1,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                color: Colors.grey[300],
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "PERFORMANCE",
                        style: TextStyle(
                            color: Color.fromARGB(255, 112, 198, 73),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        "1 Day",
                        style: st,
                      ),
                      trailing: Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        width: 200,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: LinearProgressIndicator(
                            value: 0.1,
                            color: Color.fromARGB(246, 9, 90, 26),
                            //valueColor: AlwaysStoppedAnimation<Color>(Colors.yellowAccent),
                            backgroundColor: Color(0xffD6D6D6),
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        "1 Week",
                        style: st,
                      ),
                      trailing: Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        width: 200,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: LinearProgressIndicator(
                            value: 0.1,
                            color: Color.fromARGB(246, 9, 90, 26),
                            //valueColor: AlwaysStoppedAnimation<Color>(Colors.yellowAccent),
                            backgroundColor: Color(0xffD6D6D6),
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        "1 Month",
                        style: st,
                      ),
                      trailing: Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        width: 200,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: LinearProgressIndicator(
                            value: 0.3,
                            color: Color.fromARGB(246, 9, 90, 26),
                            //valueColor: AlwaysStoppedAnimation<Color>(Colors.yellowAccent),
                            backgroundColor: Color(0xffD6D6D6),
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        "6 Month",
                        style: st,
                      ),
                      trailing: Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        width: 200,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: LinearProgressIndicator(
                            value: 0.5,
                            color: Color.fromARGB(246, 9, 90, 26),
                            //valueColor: AlwaysStoppedAnimation<Color>(Colors.yellowAccent),
                            backgroundColor: Color(0xffD6D6D6),
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        "1 Year",
                        style: st,
                      ),
                      trailing: Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        width: 200,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: LinearProgressIndicator(
                            value: 0.4,
                            color: Colors.redAccent,
                            //valueColor: AlwaysStoppedAnimation<Color>(Colors.yellowAccent),
                            backgroundColor: Color(0xffD6D6D6),
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        "2 Year",
                        style: st,
                      ),
                      trailing: Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        width: 200,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: LinearProgressIndicator(
                            value: 0.6,
                            color: Color.fromARGB(246, 9, 90, 26),
                            //valueColor: AlwaysStoppedAnimation<Color>(Colors.yellowAccent),
                            backgroundColor: Color(0xffD6D6D6),
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        "5 Year",
                        style: st,
                      ),
                      trailing: Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        width: 200,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: LinearProgressIndicator(
                            value: 0.3,
                            color: Color.fromARGB(246, 9, 90, 26),
                            //valueColor: AlwaysStoppedAnimation<Color>(Colors.yellowAccent),
                            backgroundColor: Color(0xffD6D6D6),
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                        leading: Text(
                          "10 Year",
                          style: st,
                        ),
                        trailing: Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          width: 200,
                          height: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: LinearProgressIndicator(
                              value: 1,
                              color: Color.fromARGB(246, 9, 90, 26),
                              //valueColor: AlwaysStoppedAnimation<Color>(Colors.yellowAccent),
                              backgroundColor: Color(0xffD6D6D6),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ))
        ]));
  }
}
