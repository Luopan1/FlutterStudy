import 'package:flutter/material.dart';
import 'package:nihao_flutter/model/post.dart';

class List_Demo extends StatelessWidget {

  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),//上下左右为8间距
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16.0,),//图片下面留间距
          Text(posts[index].title,style:Theme.of(context).textTheme.title),
          SizedBox(height: 8.0,),
          Text(posts[index].author,style:Theme.of(context).textTheme.subhead),
          SizedBox(height: 8.0,)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listItemBuilder,
    );
  }
}