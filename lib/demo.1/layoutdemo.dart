import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "界面布局demo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.orange,
          hintColor: Colors.orange,
          splashColor: Colors.orange
      ),
      home:MyAppBar(),
    );
  }
}

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: new Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.menu),tooltip: "菜单", onPressed: null),
          title: Text("布局结构demo"),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search),tooltip:"搜索", onPressed: null)
          ],
          bottom: TabBar(
              indicatorWeight: 3.0,
              indicatorSize: TabBarIndicatorSize.label,
              unselectedLabelColor: Colors.yellow,
              indicatorColor: Colors.red,
              tabs: [
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.history)),
                Tab(icon: Icon(Icons.directions_bike)),

          ]),
        ),
        body: TabBarView(children: [
          Icon(Icons.local_florist,size: 128.0,color: Colors.black12,),
          Icon(Icons.history,size: 128.0,color: Colors.black12,),
          Icon(Icons.directions_bike,size: 128.0,color: Colors.black12,),
        ]),
      ),
    );
  }
}

