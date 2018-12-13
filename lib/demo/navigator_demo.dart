import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            child: Text("Home"),
            onPressed: (){
              Navigator.pushNamed(context, "/home");
            }
          ),
            FlatButton(
            child: Text("About"),
            onPressed: (){
//               Navigator.of(context).push(//这是MaterialApp里面才带的
//                 MaterialPageRoute(
//                   builder: (BuildContext context){
//                     return AboutPage(title: "About",);
//                   }
//                 )
//               );
               Navigator.pushNamed(context, '/about');
            },
          )
        ],
    ),
      )
    );
  }
}

class AboutPage extends StatelessWidget {
  final String title;
  AboutPage({
    this.title
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$title"),
      ),
     floatingActionButton: FloatingActionButton(
       child: Icon(Icons.arrow_back),
       onPressed: (){
         Navigator.pop(context);
        //  Navigator.of(context).pop();

       },
     ),
    );
  }
}

