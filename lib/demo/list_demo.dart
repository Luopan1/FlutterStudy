import 'package:flutter/material.dart';
import 'package:nihao_flutter/demo/list_info.dart';
import 'package:nihao_flutter/model/post.dart';

class List_Demo extends StatelessWidget {

  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),//上下左右为8间距
      child: Stack(
        children: <Widget>[
           Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
            AspectRatio(
              aspectRatio: 16/9,
              child: Image.network(posts[index].imageUrl,fit: BoxFit.cover,),
            ),
          SizedBox(height: 16.0,),//图片下面留间距
          Text(posts[index].title,style:Theme.of(context).textTheme.title),
          SizedBox(height: 8.0,),
          Text(posts[index].author,style:Theme.of(context).textTheme.subhead),
          SizedBox(height: 8.0,)
        ],
      ),
      Positioned.fill(//增加点.水波纹效果
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              splashColor: Colors.white.withOpacity(0.3),
              highlightColor: Colors.white.withOpacity(0.1),
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context){
                    return ListInfo(post: posts[index],);
                  })
                );
              },
            ),
          ),
      )
        ],
      )
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