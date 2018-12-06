import 'package:flutter/material.dart';
import 'package:nihao_flutter/model/post.dart';

class ViewDemo extends StatelessWidget {
  Widget _PageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
            bottom: 8.0,
            left: 8.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  posts[index].title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(posts[index].author),
              ],
            )),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridViewItemBuilderDemo(),
      color: Colors.red,
    );
  }
}

class GridViewItemBuilderDemo extends StatelessWidget {
  Widget _gridViewItemBuilder(BuildContext context,int index){
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.grey[100],
        ),
       Container(
         child: Image.network(posts[index].imageUrl,fit: BoxFit.cover,),
       ),

      Positioned(
        bottom: 2.0,
        left: 5.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(posts[index].title,style: TextStyle(fontWeight: FontWeight.bold),),
            Text(posts[index].author)
          ],
        ),
      )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(//SliverGridDelegateWithFixedCrossAxisCount
//        crossAxisCount: 3,
        maxCrossAxisExtent: 150,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemBuilder: _gridViewItemBuilder,
      itemCount: posts.length,
    );
  }
}

class GridViewExtentDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        margin: EdgeInsets.all(8.0),
        alignment: Alignment.center,
        color: Colors.grey[300],
        child: Text(
          "item$index",
          style: TextStyle(
              fontStyle: FontStyle.italic, fontSize: 22.0, color: Colors.grey),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 150.0,
      crossAxisSpacing: 8.0,
      mainAxisSpacing: 8.0,
      scrollDirection: Axis.vertical,
      children: _buildTiles(100),
    );
  }
}

class GridViewDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        margin: EdgeInsets.all(8.0),
        alignment: Alignment.center,
        color: Colors.grey[300],
        child: Text(
          "item$index",
          style: TextStyle(
              fontStyle: FontStyle.italic, fontSize: 22.0, color: Colors.grey),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 8.0,
      mainAxisSpacing: 8.0,
//      scrollDirection: Axis.horizontal,
      children: _buildTiles(100),
    );
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        pageSnapping: true,
        //默认为true  滑动到一半或者小于一半时  返回之前的页面 反之则进入下一页面
        reverse: false,
        //页面反转 之前时1-3 现在是3-1
        scrollDirection: Axis.vertical,
        //页面滚动方向 默认水平滚动
        onPageChanged: (currentPage) {
          debugPrint("page: $currentPage");
        },
        controller: PageController(
            //设置开始时显示的页面
            initialPage: 1,
            keepPage: false,
            viewportFraction: 0.85),
        children: <Widget>[
          Container(
            child: Text(
              "ONE",
              style: TextStyle(fontSize: 32.0),
            ),
            color: Colors.brown[900],
            width: 20.0,
            height: 10.0,
          ),
          Container(
            child: Text(
              "TWO",
              style: TextStyle(fontSize: 32.0),
            ),
            color: Colors.blue[900],
            width: 20.0,
            height: 10.0,
          ),
          Container(
            child: Text(
              "THREE",
              style: TextStyle(fontSize: 32.0),
            ),
            color: Colors.orange[900],
            width: 20.0,
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
