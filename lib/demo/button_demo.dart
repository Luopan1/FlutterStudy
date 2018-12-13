import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  final Widget _FlatButtonDemo = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      FlatButton(
        onPressed: () {},
        child: Text("FlatButton"),
        splashColor: Colors.grey,
        textColor: Colors.white,
        shape: StadiumBorder(),
        color: Colors.blue,
      ),
      SizedBox(
        width: 16.0,
      ),
      FlatButton.icon(
        onPressed: () {},
        icon: Icon(Icons.add),
        label: Text("FlatButton"),
        splashColor: Colors.grey,
        textColor: Colors.white,
        color: Colors.red,
      ),
    ],
  );

  final Widget RaiseButton = new Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      RaisedButton(
        onPressed: () {},
        child: Text("RaisedButton"),
        splashColor: Colors.transparent,
        color: Colors.red,
        textColor: Colors.white,
        shape: StadiumBorder(),
        //圆角形状  体育场。。。
        elevation: 10.0,
      ),
      SizedBox(
        width: 16.0,
      ),
      RaisedButton.icon(
        onPressed: () {},
        icon: Icon(Icons.add),
        label: Text("RaisedButton"),
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        //矩形  传入borderRadius  可变成多边形
        color: Colors.blue,
      )
    ],
  );

  final Widget _outLineButton = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      OutlineButton(
        //无法设置内部的颜色
        onPressed: () {},
        child: Text("OutlineButton"),
        splashColor: Colors.transparent,
        borderSide: BorderSide(color: Colors.blue),
        textColor: Colors.blue,
        highlightedBorderColor: Colors.blue,
        shape: StadiumBorder(),
        highlightElevation: 0.0,
      ),
      SizedBox(
        width: 16.0,
      ),
      OutlineButton.icon(
        onPressed: () {},
        icon: Icon(Icons.add),
        label: Text("OutlineButton.icon"),
        shape: StadiumBorder(),
        splashColor: Colors.grey[100],
        highlightedBorderColor: Colors.grey[100],
        textColor: Colors.blue,
        borderSide: BorderSide(color: Colors.blue),
        highlightElevation: 3.0,
      )
    ],
  );

//按钮宽度
  final Widget _BoxWidthDemo = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
        width: 180.0,
        child: OutlineButton(
          onPressed: () {},
          splashColor: Colors.red[100],
          textColor: Colors.red[300],
          child: Text("按钮宽度为130.0"),
          borderSide: BorderSide(color: Colors.red[100]),
          shape: StadiumBorder(),
          highlightedBorderColor: Colors.red[300],
        ),
      ),
    ],
  );

  //占满所有空间
  final Widget _BoxExpandDemo = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Expanded(
        child: OutlineButton(
          onPressed: () {},
          splashColor: Colors.red[100],
          textColor: Colors.red[300],
          child: Text("按钮宽度为130.0"),
          borderSide: BorderSide(color: Colors.red[100]),
          shape: BeveledRectangleBorder(),
          highlightedBorderColor: Colors.red[300],
        ),
      ),
      SizedBox(width: 16.0,),
      Expanded(
        flex: 2,//调整占用的大小 默认为1 越大占用越多
        child: OutlineButton(
          onPressed: () {},
          splashColor: Colors.red[100],
          textColor: Colors.red[300],
          child: Text("按钮宽度为130.0"),
          borderSide: BorderSide(color: Colors.red[100]),
          shape: BeveledRectangleBorder(),
          highlightedBorderColor: Colors.red[300],
        ),
      ),
    ],
  );
//水平平均分的buttonBar

  final Widget _ButtonBarDemo=Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      ButtonBar(
        children: <Widget>[
          OutlineButton(
            onPressed: () {},
            splashColor: Colors.blue[100],
            textColor: Colors.blue[300],
            child: Text("按钮宽度为130.0"),
            borderSide: BorderSide(color: Colors.blue[100]),
            shape: BeveledRectangleBorder(),
            highlightedBorderColor: Colors.blue[300],
          ),
          SizedBox(width: 30.0,),
          OutlineButton(
            onPressed: () {},
            splashColor: Colors.blue[100],
            textColor: Colors.blue[300],
            child: Text("按钮宽度为130.0"),
            borderSide: BorderSide(color: Colors.blue[100]),
            shape: BeveledRectangleBorder(),
            highlightedBorderColor: Colors.blue[300],
          ),
        ],

      )
    ],
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ButtonDemo"),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _FlatButtonDemo,
            RaiseButton,
            _outLineButton,
            _BoxWidthDemo,
            _BoxExpandDemo,
            _ButtonBarDemo
          ],
        ),
      ),
    );
  }
}