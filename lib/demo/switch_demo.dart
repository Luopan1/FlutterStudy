import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _switchIsOpen = false;
  bool _switchListTitleIsOpen = false;

  void _switchChange(value) {
    setState(() {
      _switchIsOpen = value;
    });
  }
  void _switchListTitleChange(value) {
    setState(() {
      _switchListTitleIsOpen = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SwitchListTile(
              value: _switchListTitleIsOpen,
              onChanged: _switchListTitleChange,
              title: Text("SwitchListTitle"),
              subtitle: Text("value onChanged title subtitle activeColor activeTrackColor inactiveThumbColor inactiveTrackColor selected"),
              selected: _switchListTitleIsOpen,
              secondary: Icon(Icons.directions),
          ),


          Text(
            _switchIsOpen ? "😊" : "😒",
            style: TextStyle(fontSize: 32.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Switch(
                value: _switchIsOpen,
                onChanged: _switchChange,
                activeColor: Colors.red,//打开时原点的颜色
                activeTrackColor: Colors.blue,//打开时横杆的颜色
                inactiveThumbColor: Colors.orange,//关闭时圆点的颜色
                inactiveTrackColor: Colors.black,//关闭时横杆的颜色
              )
            ],
          )
        ],
      ),
    );
  }
}
