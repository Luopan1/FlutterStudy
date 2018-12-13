import 'package:flutter/material.dart';

class PopUpMenuBottomDemo extends StatefulWidget {
  @override
  _PopUpMenuBottomDemoState createState() => _PopUpMenuBottomDemoState();
}

class _PopUpMenuBottomDemoState extends State<PopUpMenuBottomDemo> {
   String _currentSelectValue="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PopUpMenuBottomDemo"),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_currentSelectValue),
                PopupMenuButton(
                  onSelected: (value){
                    debugPrint("选中的是   $value");
                    setState(() {
                      _currentSelectValue=value;
                    });
                  },
                    itemBuilder: (context){
                      return [
                        PopupMenuItem(child: Text("Home"),value: "Home",),
                        PopupMenuItem(child: Text("Discovery"),value: "Discovery",),
                        PopupMenuItem(child: Text("Quite"),value: "Quite",),
                      ];
                    }

                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

