import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StatckDemo();
  }
}

class StatckDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        //spaceEvenly 主轴上的控件平均的分配搭到小部件周围  spaceBetween 分配到小部件周围 spaceAround分配到小部件周围 不平均
//        crossAxisAlignment: CrossAxisAlignment.center,

        children: <Widget>[
          Stack_Demo(),
          AspectRationDemo(),
          ConstrainedBoxDemo()

//          ConstrainedBox(constraints: null)
        ],
      ),
    );
    ;
  }
}

class ConstrainedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ConstrainedBox(
        constraints: BoxConstraints(minWidth: 50.0, minHeight: 50.0),
        child: Container(
          child: Icon(Icons.dashboard,size: 32.0,color: Colors.white,),
          decoration: BoxDecoration(
            color: Colors.orange,
//            borderRadius: BorderRadius.circular(16.0),
            shape: BoxShape.circle
          ),
        ),
      ),
    );
  }
}

class AspectRationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AspectRatio(
        aspectRatio: 2.0 / 1.0,
        child: Container(
          margin: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "http://pic155.nipic.com/file/20180207/26718048_144859445034_2.jpg"),
                fit: BoxFit.cover),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
      ),
    );
  }
}

class Stack_Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
//        alignment: Alignment.topLeft,

        children: <Widget>[
          SizedBox(
            width: 200.0,
            height: 300.0,
            child: Container(
              alignment: Alignment(0.0, 0.0), //自部件的位置
              decoration: BoxDecoration(
                color: Colors.red,
                /* borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15.0),
                    topLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                    bottomLeft: Radius.circular(15.0),
                  ),*/
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Icon(Icons.pool),
            ),
          ),
          SizedBox(
            height: 15.0,
            width: 15.0,
          ),
          SizedBox(
            width: 100.0,
            height: 100.0,
            child: Container(
              alignment: Alignment.center, //自部件的位置
              decoration: BoxDecoration(
                  color: Colors.red,
                  /* borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15.0),
                    topLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                    bottomLeft: Radius.circular(15.0),
                  ),*/
//                     borderRadius: BorderRadius.circular(15.0),
                  shape: BoxShape.circle,
                  gradient:
                      RadialGradient(colors: [Colors.blue, Colors.orange])),
              child: Icon(
                Icons.money_off,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            right: 20.0,
            top: 20.0,
            child: Icon(
              Icons.ac_unit,
              color: Colors.white,
            ),
          ),
          Positioned(
            right: 24.0,
            top: 80.0,
            child: Icon(
              Icons.ac_unit,
              size: 32.0,
              color: Colors.white,
            ),
          ),
          Positioned(
            right: 90.0,
            top: 120.0,
            child: Icon(
              Icons.ac_unit,
              size: 16.0,
              color: Colors.white,
            ),
          ),
          Positioned(
            right: 130.0,
            top: 150.0,
            child: Icon(
              Icons.ac_unit,
              size: 20.0,
              color: Colors.white,
            ),
          ),
          Positioned(
            right: 30.0,
            top: 180.0,
            child: Icon(
              Icons.ac_unit,
              size: 25.0,
              color: Colors.white,
            ),
          ),
          Positioned(
            right: 5.0,
            top: 200.0,
            child: Icon(
              Icons.ac_unit,
              size: 22.0,
              color: Colors.white,
            ),
          ),
          Positioned(
            right: 10.0,
            top: 280.0,
            child: Icon(
              Icons.ac_unit,
              size: 23.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class IconBaege extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBaege(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
      width: size + 60,
      height: size + 60,
      color: Colors.red,
    );
  }
}
