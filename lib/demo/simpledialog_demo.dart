import 'package:flutter/material.dart';

enum Option { A, B, C }

class SimpleDialogDemo extends StatefulWidget {
  @override
  _SimpleDialogDemoState createState() => _SimpleDialogDemoState();
}

class _SimpleDialogDemoState extends State<SimpleDialogDemo> {
   String chooseResult="";

  Future _showDialog() async {
    final result = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text("SimpleDialog"),
            children: <Widget>[
              SimpleDialogOption(
                child: Text("option A"),
                onPressed: () {
                  Navigator.of(context).pop(Option.A);
                },
              ),
              SimpleDialogOption(
                child: Text("option B"),
                onPressed: () {
                  Navigator.of(context).pop(Option.B);
                },
              ),
              SimpleDialogOption(
                child: Text("option C"),
                onPressed: () {
                  Navigator.of(context).pop(Option.C);
                },
              )
            ],
          );
        });

    switch(result){
      case Option.A:
        setState(() {
          chooseResult="A";
        });
        break;
      case Option.B:
        setState(() {
          chooseResult="B";
        });
        break;
      case Option.C:
        setState(() {
          chooseResult="C";
        });
        break;
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SimpleDialog"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("your choosed is $chooseResult"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: _showDialog,
                child: Text("显示对话框"),
                color: Colors.blue,
                textColor: Colors.white,
                shape: StadiumBorder(),
                splashColor: Colors.grey.withOpacity(0.3),
                elevation: 5.0,
                highlightElevation: 0.0,
              )
            ],
          ),
        ],
      ),
    );
  }
}
