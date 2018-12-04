import 'package:flutter/material.dart';
import 'package:nihao_flutter/demo/list_demo.dart';
import 'package:nihao_flutter/demo/drawer.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "界面布局",
      theme:
          ThemeData(
              primarySwatch: Colors.yellow, //只有在MaterApp中配置主题
              highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
              splashColor: Colors.white70),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: new Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            elevation: 0.0,
//            leading: IconButton(icon: Icon(Icons.menu),tooltip: "菜单", onPressed: null),
            title: Text("界面布局复习"),
            actions: [
              IconButton(icon: Icon(Icons.search),tooltip: "搜索",onPressed:null)
            ],
            bottom: TabBar(
                indicatorColor: Colors.black54,
                indicatorWeight: 3,
                unselectedLabelColor: Colors.black38,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
              Tab(icon: Icon(Icons.local_florist),),
              Tab(icon: Icon(Icons.history),),
              Tab(icon: Icon(Icons.directions_bike)),
            ]),
          ),
          body: TabBarView(
              children: [
                List_Demo(),
                Icon(Icons.history),
                Icon(Icons.directions_bike)
              ]
          ),
          drawer: Drawer(//注意！！！
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName:Text("bongeous",style: TextStyle(fontWeight: FontWeight.bold),),
                  accountEmail: Text("121212@qq.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage("https://cdn.sspai.com/attachment/origin/2014/09/07/176159.jpg?imageMogr2/quality/95/thumbnail/!120x120r/gravity/Center/crop/120x120"),

                  ),
                  decoration: new BoxDecoration(
                      color: Colors.orange,
                      image: DecorationImage(
                          image: NetworkImage("https://cdn.sspai.com/2017/06/25/d286b4c6c0c1dc04f9c2df82d5f75722.png?imageView2/2/w/1120/q/90/interlace/1/ignore-error/1"),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(Colors.orange.withOpacity(0.6), BlendMode.hardLight)
                      )
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.message,color: Colors.black12,size: 22.0,),
                  title: Text("message",textAlign: TextAlign.right,),
                  trailing: Icon(Icons.message),
                  onTap:(){
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.message,color: Colors.black12,size: 22.0,),
                  title: Text("message",textAlign: TextAlign.center,),
                  trailing: Icon(Icons.message),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.message,color: Colors.black12,size: 22.0,),
                  title: Text("message",textAlign: TextAlign.left,),
                  trailing: Icon(Icons.message),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          bottomNavigationBar:MyBottomNavigationBar()

        )
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex=0;
  void _changeItem(int index){
    setState(() {
      _currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.orange,
        currentIndex: _currentIndex,
        iconSize: 18.0,
        onTap: _changeItem,
        items: [
      BottomNavigationBarItem(icon: Icon(Icons.message),title: Text("消息")),
      BottomNavigationBarItem(icon: Icon(Icons.message),title: Text("消息")),
      BottomNavigationBarItem(icon: Icon(Icons.message),title: Text("消息")),
      BottomNavigationBarItem(icon: Icon(Icons.message),title: Text("消息")),
    ]);
  }
}



