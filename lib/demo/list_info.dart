import 'package:flutter/material.dart';
import '../model/post.dart';

class ListInfo extends StatelessWidget {
  final Post post;
  ListInfo({@required this.post});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(post.title),),
      body:  Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Image.network(posts[0].imageUrl,fit: BoxFit.cover,),
              ),
             Padding(
               padding: EdgeInsets.all(8.0),
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                    SizedBox(height: 16.0,),
                    Text(post.title,style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold),),
                    SizedBox(height: 8.0,),
                    Text(post.author,style: TextStyle(fontSize: 12.0,fontStyle: FontStyle.italic),),
                    SizedBox(height: 8.0,),
                    Text(post.description,style: TextStyle(fontSize: 12.0,fontStyle: FontStyle.italic),),
                 ],
               ),
             )
            ],
          ),
      ),
    );
  }
}