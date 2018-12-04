import 'package:flutter/material.dart';
import 'package:nihao_flutter/demo/list_demo.dart';
import 'package:nihao_flutter/demo/layout_demo.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(//使用google的材质主题  title显示在app为卡片式后台时显示
      debugShowCheckedModeBanner: false,//有上角的debug的显示
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,//只有在MaterApp中配置主题
      ),
      home: Home(),//设置主页面
    );
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(//主视图 主要是提供appbar的配置  body的配置
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("NIHAO"),
        elevation: 0.0,
      ),
      body: List_Demo(),
    );
  }
}




