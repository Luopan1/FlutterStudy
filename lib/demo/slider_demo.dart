import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  var _sliderValue=0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Slider"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("步数字段：divisions  现在进度$_sliderValue"),
            Slider(
                value: _sliderValue,
                inactiveColor: Colors.yellow.withOpacity(0.3),
                activeColor: Colors.yellow,
                min: 0.0,
                max: 100.0,
                divisions: 10,//分为10步
                label: "$_sliderValue",
                onChanged: (value) {
                  setState(() {
                    _sliderValue = value;
                  });
                })
          ],
        ),
      ),
    );
  }
}
