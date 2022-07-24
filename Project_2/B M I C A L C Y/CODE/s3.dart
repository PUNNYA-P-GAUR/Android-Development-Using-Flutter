import 'package:flutter/material.dart';

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
                "Height",
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
                    "cm",
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
