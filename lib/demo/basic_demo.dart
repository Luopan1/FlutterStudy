import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(fontSize: 16.0);
  final String _title = "将敬酒";
  final String _author = "李白";

  @override
  Widget build(BuildContext context) {
    return Text(
      "《$_title》- $_author\n君不见，黄河之水天上来，奔流到海不复回。君不见，高堂明镜悲白发，朝如青丝暮成雪"
          "人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。岑夫子，丹丘生，将进酒，杯莫停",
      textAlign: TextAlign.center,
      style: TextStyle(fontWeight: FontWeight.bold),
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: "nihao_flutter",
          style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontSize: 22.0,
            fontWeight: FontWeight.w200,
            fontStyle: FontStyle.italic,
          ),
          children: [
            //后面追加文字  样式自动继承父类  可修改
            TextSpan(
                text: ".com",
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 18.0,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w100)),
            TextSpan(
              text: "点击",
            ),
          ]),
    );
  }
}

class Container_Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://cdn.sspai.com/2017/06/25/d286b4c6c0c1dc04f9c2df82d5f75722.png?imageView2/2/w/1120/q/90/interlace/1/ignore-error/1"),
          alignment: Alignment.topCenter,
//          repeat: ImageRepeat.repeatY
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.indigoAccent[400].withOpacity(0.6), BlendMode.hardLight),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, //主轴居中对齐
        children: <Widget>[
          Container(
            child: Icon(
              Icons.pool,
              color: Colors.white,
              size: 32.0,
            ),
//            color: Color.fromRGBO(3, 54, 255, 1.0),
//            padding: EdgeInsets.only(left: 8.0,top: 8.0,right: 8.0,bottom: 16.0),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                /*   border: Border(top: BorderSide(//上下左右的设置边框
                color: Colors.indigoAccent[100],
                width: 5.0,
                style: BorderStyle.solid,
              ))     */
                border: Border.all(color: Colors.orange, width: 5.0),
                //同时设置多个边框
//            borderRadius: BorderRadius.circular(16),//圆角盒子不能使用 shape: BoxShape.circle 的圆角效果
//            borderRadius: BorderRadius.only(
//                topLeft: Radius.circular(16.0),
//                topRight: Radius.circular(16.0),
//                bottomLeft: Radius.circular(16.0),
//                bottomRight: Radius.circular(16.0)
//            ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(-6.0, -6.0),
                    color: Colors.red,
                    blurRadius: 20.0,
                    spreadRadius: 3.0,
                  ),
                ],
                shape: BoxShape.circle,
//              gradient: RadialGradient(colors:[Color.fromRGBO(7, 102, 255, 1.0),Color.fromRGBO(3, 28, 128, 1.0)] )//镜相渐变 颜色的渐变效果 一般需要两种颜色
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(7, 102, 255, 1.0),
                    Color.fromRGBO(3, 28, 128, 1.0)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
            ),
          ),
        ],
      ),
    );
  }
}
