import 'package:flutter/material.dart';
import 'package:nihao_flutter/model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          SliverAppBar(
            leading: new Center(child: null,),
//            title: Text("NIHAO"),
//            pinned: true,//国定在顶部
            floating: true,//悬浮在顶部  可以顶出布局 下拉可以慢慢拉出来
            expandedHeight: 178.0,//设置展开高度
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,//标题展示在中间 滑动时不像左边移动
              title: Text("nihao flutter".toUpperCase(),style:TextStyle(letterSpacing: 3.0)),
              background: Image.network(posts[4].imageUrl,fit: BoxFit.cover,),
            ),
          ),
          SliverSafeArea(
            sliver: SliverPadding(
              padding: EdgeInsets.all(8.0),
              sliver: SliverListDemo(),
            ),
          ),
        ],
      ),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 32.0),
            child: Material(
              borderRadius: BorderRadius.circular(12.0),
              elevation: 14.0,
              shadowColor: Colors.grey.withOpacity(0.5),
              child: Stack(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16/9,
                    child: Image.network(
                      posts[index].imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 32.0,
                    left: 32.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          posts[index].title,
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white
                          ),
                        ),
                        Text(
                          posts[index].author,
                          style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        childCount: posts.length,
      ),
    );
  }
}

class SliverGridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Container(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        );
      }, childCount: posts.length),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
        childAspectRatio: 1.0,
      ),
    );
  }
}
