import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  @override
  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  var isCheck=true;
  bool checkBoxLitTitle=false;

  void _checkBoxChanged(value){
   setState(() {
     isCheck=value;
   });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CheckBoxDemo"),),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
              value: checkBoxLitTitle,
              activeColor: Colors.blue,
              title: Text("CheckBoxListTitle"),
              subtitle: Text("secondary activeColor title subtitle selected ".toLowerCase()),
              secondary: Icon(Icons.book),
              selected: checkBoxLitTitle,//是否使用选中时activeColor的颜色
              onChanged: (value){
                setState(() {
                  checkBoxLitTitle=value;
                });
              },
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("CheckBox value activeColor onChange "),
                 Checkbox(
                     value: isCheck,//checkBox 设置的值
                     activeColor: Colors.blue,//激活状态下的颜色
                     onChanged: _checkBoxChanged
                 )
                ],
              )
          ],
        ),
      ),
    );
  }
}
