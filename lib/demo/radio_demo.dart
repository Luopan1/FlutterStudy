import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int _radioGroup = -1;
  int _radioListTitleGroup = 0;

  void _radioGroupChange(value) {
    setState(() {
      _radioGroup = value;
    });
  }

  void _radioListTitleChange(value) {
    setState(() {
      _radioListTitleGroup = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Radio"),),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("RadioListTile selected $_radioListTitleGroup"),
            SizedBox(height: 16.0,),
            RadioListTile(
              value: 0,
              groupValue: _radioListTitleGroup,
              onChanged: _radioListTitleChange,
              title:Text("RadioListTitle1"),
              subtitle: Text("value groupValue onChange title subTitle secondary"),
              selected: _radioListTitleGroup==0,
              activeColor: Colors.blue,
              secondary: Icon(Icons.filter_1),
            ),
            RadioListTile(
              value: 1,
              groupValue: _radioListTitleGroup,
              onChanged: _radioListTitleChange,
              title:Text("RadioListTitle2"),
              subtitle: Text("value groupValue onChange title subTitle secondary"),
              selected: _radioListTitleGroup==1,
              activeColor: Colors.red,
              secondary: Icon(Icons.filter_2),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: 0,
                  groupValue: _radioGroup,
                  onChanged: _radioGroupChange,
                  activeColor: Colors.blue,
                ),
                Radio(
                  value: 1,
                  groupValue: _radioGroup,
                  onChanged: _radioGroupChange,
                  activeColor: Colors.black,

                ),
                Radio(
                  value: 2,
                  groupValue: _radioGroup,
                  onChanged: _radioGroupChange,
                  activeColor: Colors.red,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
