import 'package:flutter/material.dart';

class BottomSheetDialogDemo extends StatefulWidget {
  @override
  _BottomSheetDialogDemoState createState() => _BottomSheetDialogDemoState();
}

class _BottomSheetDialogDemoState extends State<BottomSheetDialogDemo> {
  var _bottomSheetGloablKey = GlobalKey<ScaffoldState>();

  bool isCheck1 = false;
  bool isCheck2 = false;
  bool isCheck3 = false;
  bool isCheck4 = false;

  Future _showBottomSheetDialog() async {
    _bottomSheetGloablKey.currentState.showBottomSheet((BuildContext context) {
      return Container(
          color: Colors.blue,
          height: 40.0,
          width: double.infinity,
          child: Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.pause_circle_outline),
                  Text("Hello World"),
                  Expanded(
                      child: Text(
                    "Flutter",
                    textAlign: TextAlign.right,
                  ))
                ],
              )));
    });
  }

  String selectValue="nothing";
 Future _showBottomMoDalSheetDialog() async{
   final String result=await showModalBottomSheet(
        context: context,
        builder: ((BuildContext context) {
          return ListView(
            children: <Widget>[
              ListTile(
                title: Text("select A"),
                leading: Icon(Icons.filter_1),
                onTap:(){
                   Navigator.pop(context,"A");
                },
              ),

            ],
          );
        }));

   switch(result){
     case "A":
       setState(() {
         selectValue="A";
       });
       break;
   }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetGloablKey,
      appBar: AppBar(
        title: Text("BottomSheetDialog"),
      ),
      body: Container(
        padding: EdgeInsets.all(6.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  shape: StadiumBorder(),
                  splashColor: Colors.grey[100],
                  highlightColor: Colors.blue,
                  child: Text("显示bottomSheetDialog"),
                  onPressed: _showBottomSheetDialog,
                ),
                SizedBox(
                  width: 16.0,
                ),
                RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  shape: StadiumBorder(),
                  splashColor: Colors.grey[100],
                  highlightColor: Colors.blue,
                  child: Text("显示BottomModalSheetDialog\n selectedValue $selectValue"),
                  onPressed: _showBottomMoDalSheetDialog,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
