import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_3d_choice_chip/flutter_3d_choice_chip.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pretty_gauge/pretty_gauge.dart';
import 'package:share_plus/share_plus.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
import 'aboutapp.dart';
import 'appcreators.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: screen1(),
  ));
}

class screen1 extends StatelessWidget {
  screen1({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return (MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.orangeAccent,
          appBar: AppBar(
              centerTitle: true,
              actions: <Widget>[
                PopupMenuButton(
                  icon: Icon(Icons.more_vert),
                  itemBuilder: (context) => [
                    PopupMenuItem(value: 1, child: Text("App Creators")),
                    PopupMenuItem(value: 2, child: Text("About App"))
                  ],
                  onSelected: (int m) {
                    if (m == 1) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return app1();
                      }));
                    } else if (m == 2) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (Context) {
                        return app2();
                      }));
                    }
                  },
                )
              ],
              title: Text(
                "B M I   C A L C U L A T O R",
                textAlign: TextAlign.justify,
              ),
              // titleTextStyle: TextStyle(
              //     fontWeight: FontWeight.w700,
              //fontSize: 20,
              backgroundColor: Colors.orangeAccent),
          body: SafeArea(
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: ListView(
                  children: [
                    Image(
                      image: NetworkImage(
                          'https://is5-ssl.mzstatic.com/image/thumb/Purple118/v4/1d/da/21/1dda219b-6a12-7cd9-a708-49c6d68a8f74/AppIcon-0-1x_U007emarketing-0-0-GLES2_U002c0-512MB-sRGB-0-0-0-85-220-0-0-0-7.png/246x0w.png'),
                      height: 500,
                      width: 500,
                    ),
                    SizedBox(
                      height: 10,
                      width: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(children: [
                        Expanded(
                            child: ElevatedButton(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                  child: HomeScreen(),
                                  type: PageTransitionType.fade),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey, // Background color
                            onPrimary: Colors
                                .limeAccent, // Text Color (Foreground color)
                          ),
                          child: const Text(
                            'GET  STARTED',
                            style: TextStyle(fontSize: 40),
                          ),
                        )),
                      ]),
                    ),
                  ],
                )),
          ),
        )));
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _gender = 0;
  int _height = 150;
  int _age = 30;
  int _weight = 50;
  bool _isFinished = false;
  double _bmiScore = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orangeAccent,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text("B M I  C A L C U L A T O R",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
          backgroundColor: Colors.orangeAccent,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(12),
            child: Container(
              //elevation: 12,
              color: Colors.orangeAccent,
              child: Column(
                children: [
                  GenderWidget(
                    onChange: (genderVal) {
                      _gender = genderVal;
                    },
                  ),
                  HeightWidget(
                    onChange: (heightVal) {
                      _height = heightVal;
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AgeWeightWidget(
                          onChange: (ageVal) {
                            _age = ageVal;
                          },
                          title: "A G E",
                          initValue: 30,
                          min: 0,
                          max: 100),
                      AgeWeightWidget(
                          onChange: (weightVal) {
                            _weight = weightVal;
                          },
                          title: "W E I G H T (Kg)",
                          initValue: 50,
                          min: 0,
                          max: 200)
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 60),
                    child: SwipeableButtonView(
                        isFinished: _isFinished,
                        onFinish: () async {
                          await Navigator.push(
                              context,
                              PageTransition(
                                  child: ScoreScreen(
                                    bmiScore: _bmiScore,
                                    age: _age,
                                  ),
                                  type: PageTransitionType.fade));

                          setState(() {
                            _isFinished = false;
                          });
                        },
                        onWaitingProcess: () {
                          calculateBmi();

                          Future.delayed(Duration(seconds: 1), () {
                            setState(() {
                              _isFinished = true;
                            });
                          });
                        },
                        activeColor: Colors.lime,
                        buttonWidget: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.orangeAccent,
                        ),
                        buttonText: "C A L C U L A T E"),
                  )
                ],
              ),
            ),
          ),
        ));
  }

  void calculateBmi() {
    _bmiScore = _weight / pow(_height / 100, 2);
  }
}

class GenderWidget extends StatefulWidget {
  final Function(int) onChange;

  const GenderWidget({Key? key, required this.onChange}) : super(key: key);

  @override
  _GenderWidgetState createState() => _GenderWidgetState();
}

class _GenderWidgetState extends State<GenderWidget> {
  int _gender = 0;

  final ChoiceChip3DStyle selectedStyle = ChoiceChip3DStyle(
      topColor: Colors.greenAccent,
      backColor: Colors.grey,
      borderRadius: BorderRadius.circular(20));

  final ChoiceChip3DStyle unselectedStyle = ChoiceChip3DStyle(
      topColor: Color.fromARGB(255, 230, 11, 11),
      backColor: Color.fromARGB(255, 30, 28, 28),
      borderRadius: BorderRadius.circular(20));

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ChoiceChip3D(
              border: Border.all(color: Colors.grey),
              style: _gender == 1 ? selectedStyle : unselectedStyle,
              onSelected: () {
                setState(() {
                  _gender = 1;
                });
                widget.onChange(_gender);
              },
              onUnSelected: () {},
              selected: _gender == 1,
              child: Column(
                children: [
                  Image.network(
                    "https://cdn.pixabay.com/photo/2014/03/24/13/42/male-294095__340.png",
                    width: 30,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text("M a l e")
                ],
              )),
          const SizedBox(
            width: 20,
          ),
          ChoiceChip3D(
              border: Border.all(color: Colors.blue),
              style: _gender == 2 ? selectedStyle : unselectedStyle,
              onSelected: () {
                setState(() {
                  _gender = 2;
                });
                widget.onChange(_gender);
              },
              selected: _gender == 2,
              onUnSelected: () {},
              child: Column(
                children: [
                  Image.network(
                    "https://cdn.pixabay.com/photo/2017/01/31/14/40/bathroom-2024650__340.png",
                    width: 30,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text("F e m a l e")
                ],
              ))
        ],
      ),
    );
  }
}

class AgeWeightWidget extends StatefulWidget {
  final Function(int) onChange;

  final String title;

  final int initValue;

  final int min;

  final int max;

  const AgeWeightWidget(
      {Key? key,
      required this.onChange,
      required this.title,
      required this.initValue,
      required this.min,
      required this.max})
      : super(key: key);

  @override
  _AgeWeightWidgetState createState() => _AgeWeightWidgetState();
}

class _AgeWeightWidgetState extends State<AgeWeightWidget> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    counter = widget.initValue;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            child: Column(children: [
          Text(
            widget.title,
            style: const TextStyle(fontSize: 20, color: Colors.black),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(height: 10, width: 10),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  InkWell(
                    child: const CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.black,
                      child: Icon(Icons.remove, color: Colors.white),
                    ),
                    onTap: () {
                      setState(() {
                        if (counter > widget.min) {
                          counter--;
                        }
                      });
                      widget.onChange(counter);
                    },
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(height: 10, width: 10),
                  Text(
                    counter.toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    child: const CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.black,
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                    onTap: () {
                      setState(() {
                        if (counter < widget.max) {
                          counter++;
                        }
                      });
                      widget.onChange(counter);
                    },
                  ),
                ],
              ),
            ),
          )
        ])));
  }
}

class HeightWidget extends StatefulWidget {
  final Function(int) onChange;

  const HeightWidget({Key? key, required this.onChange}) : super(key: key);

  @override
  _HeightWidgetState createState() => _HeightWidgetState();
}

class _HeightWidgetState extends State<HeightWidget> {
  int _height = 150;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Container(
            child: Container(
          color: Colors.orangeAccent,
          child: Column(
            children: [
              const Text(
                "H E I G H T",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _height.toString(),
                    style: const TextStyle(fontSize: 40),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "(cm)",
                    style: TextStyle(fontSize: 20, color: Colors.brown),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Slider(
                  min: 50,
                  max: 200,
                  value: _height.toDouble(),
                  thumbColor: Colors.cyanAccent,
                  onChanged: (value) {
                    setState(() {
                      _height = value.toInt();
                    });
                    widget.onChange(_height);
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        )),
      ),
    );
  }
}

class ScoreScreen extends StatelessWidget {
  TextStyle tstyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  final double bmiScore;

  final int age;

  String? bmiStatus;

  String? bmiInterpretation;

  Color? bmiStatusColor;

  ScoreScreen({Key? key, required this.bmiScore, required this.age})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    setBmiInterpretation();

    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
        title: const Text("B M I  S C O R E"),
      ),
      body: Container(
          color: Colors.orange,
          padding: const EdgeInsets.all(12),
          child: Container(
              color: Colors.orange,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Y O U R  S C O R E",
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    PrettyGauge(
                      gaugeSize: 300,
                      minValue: 0,
                      maxValue: 40,
                      segments: [
                        GaugeSegment('U N D E R W E I G H T', 18.5, Colors.red),
                        GaugeSegment('N O R M A L', 6.4, Colors.green),
                        GaugeSegment(
                            'O V E R W E I G H T', 5, Colors.deepOrange),
                        GaugeSegment('O B E S E', 10.1, Colors.pink),
                      ],
                      valueWidget: Text(
                        bmiScore.toStringAsFixed(1),
                        style: const TextStyle(fontSize: 40),
                      ),
                      currentValue: bmiScore.toDouble(),
                      needleColor: Colors.brown,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      bmiStatus!,
                      style: TextStyle(fontSize: 20, color: bmiStatusColor!),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      bmiInterpretation!,
                      style: const TextStyle(fontSize: 15),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("R E - C A L C U L C A T E")),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Share.share(
                                  "YOUR BMI IS ${bmiScore.toStringAsFixed(1)} at age $age");
                            },
                            child: const Text("S H A R E",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold))),
                      ],
                    )
                  ]))),
    );
  }

  void setBmiInterpretation() {
    if (bmiScore > 30) {
      bmiStatus = "O B E S E";
      bmiInterpretation = "Please work to reduce obesity";
      bmiStatusColor = Colors.pink;
    } else if (bmiScore >= 25) {
      bmiStatus = "O V E R W E I G H T";
      bmiInterpretation = "Do regular exercise & reduce the weight";
      bmiStatusColor = Colors.deepOrange;
    } else if (bmiScore >= 18.5) {
      bmiStatus = "N O R M A L";
      bmiInterpretation = "Enjoy, You are fit";
      bmiStatusColor = Colors.green;
    } else if (bmiScore < 18.5) {
      bmiStatus = "U N D E R W E I G H T";
      bmiInterpretation = "Try to increase the weight";
      bmiStatusColor = Colors.red;
    }
  }
}
