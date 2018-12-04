import 'package:flutter/material.dart';
import 'package:nihao_flutter/demo/list_demo.dart';
import 'package:nihao_flutter/demo/drawer.dart';
import 'package:nihao_flutter/demo/basic_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //使用google的材质主题  title显示在app为卡片式后台时显示
      debugShowCheckedModeBanner: false, //有上角的debug的显示
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.yellow, //只有在MaterApp中配置主题
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70),
      home: Home(), //设置主页面
    );
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: new Scaffold(
        //主视图 主要是提供appbar的配置  body的配置
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          elevation: 0.0,
//          leading: IconButton(//添加了drawer之后  删除了leadding，会在appbar上自动添加一个菜单按钮  点击打开抽屉
//              icon: Icon(Icons.menu),
//              tooltip: "Navigration",
//              onPressed: (){
//              }
//          ),
          title: Text("NIHAO"),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                tooltip: "search",
                onPressed: () {
                  debugPrint("Navigration button is pressed");
                }),
          ],

          bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 3.0,
              tabs: [
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.history)),
                Tab(icon: Icon(Icons.directions_bike)),
              ]),
        ),
        body: TabBarView(children: [
          List_Demo(),
//          Icon(
//            Icons.history,
//            size: 128.0,
//            color: Colors.black12,
//          ),
          BasicDemo(),
          Icon(
            Icons.directions_bike,
            size: 128.0,
            color: Colors.black12,
          ),
        ]),
        drawer: Drawer_Demo(),
        bottomNavigationBar: BootomNavicationBar(),
      )
    );
  }

  void _onTabHandler(int index){

  }

}

class BootomNavicationBar extends StatefulWidget {
  @override
  _BootomNavicationBarState createState() => _BootomNavicationBarState();
}

class _BootomNavicationBarState extends State<BootomNavicationBar> {
  int _currentIndex=0;


  void _onTabHandler(int index){
    setState(() {
      _currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      //如果items的数量大于4个 就会变成全白色而不是主题色
        type: BottomNavigationBarType.fixed, //这样做可以设置item的颜色
        fixedColor: Colors.black, //修改bottomNavagationBar的颜色为黑色
        currentIndex: _currentIndex, //设置默认的选中
        onTap: _onTabHandler,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore), title: Text("Explire"),),
          BottomNavigationBarItem(
              icon: Icon(Icons.history), title: Text("history")),
          BottomNavigationBarItem(
              icon: Icon(Icons.list), title: Text("list")),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text("mine")),
        ]);
  }
}

