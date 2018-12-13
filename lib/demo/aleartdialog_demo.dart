import 'package:flutter/material.dart';

class AleartDialogDemo extends StatefulWidget {
  @override
  _AleartDialogDemoState createState() => _AleartDialogDemoState();
}

enum Result {
  ok,
  cancle,
}

class _AleartDialogDemoState extends State<AleartDialogDemo> {
  String choiceResult = "nothing";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AleartDialog"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[Text("you chosed $choiceResult")],)
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
//          foregroundColor: Colors.blue,
//          backgroundColor: Colors.blue,
          onPressed: _openAleartDialog),
    );
  }

  Future _openAleartDialog() async {
    final result = await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("AlertDialog"),
            content: Text("Are your sure about this?"),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop(Result.cancle);
                },
                child: Text("Cancle"),
                textColor: Colors.white,
                color: Colors.blue,
                shape: StadiumBorder(),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop(Result.ok);
                },
                child: Text("Sure"),
                textColor: Colors.blue,
                color: Colors.white,
              ),
            ],
          );
        });

    switch (result) {
      case Result.ok:
        setState(() {
          choiceResult="Sure";
        });
        break;

      case Result.cancle:
        setState(() {
          choiceResult="Cancle";
        });
        break;
    }
  }
}
