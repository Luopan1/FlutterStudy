import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatelessWidget {
  final Widget _floatingActionButton = FloatingActionButton(
    onPressed: null,
    child: Icon(Icons.add),
    elevation: 22.0,
    backgroundColor: Colors.black87,

//      shape: BeveledRectangleBorder( //现在是正方形
//        borderRadius: BorderRadius.circular(30.0)//变成菱形
//      ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FloatingActionButton"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _floatingActionButton,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80.0,
          child: Text("111111"),
        ),
        shape:
        CircularNotchedRectangle(), //  会在BottomAppBar上增加一个和floatingActionButton一样大小的缺口
      ),
    );
  }
}

