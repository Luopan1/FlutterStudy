import 'package:flutter/material.dart';
class Drawer_Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("bongeous",style: TextStyle(fontWeight: FontWeight.bold),),
            accountEmail: Text("11212134@qq.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage("https://cdn.sspai.com/attachment/origin/2014/09/07/176159.jpg?imageMogr2/quality/95/thumbnail/!120x120r/gravity/Center/crop/120x120"),
            ),
            decoration: new BoxDecoration(//修改账户的背景颜色
                color: Colors.yellow,
                image: DecorationImage(
                    image: NetworkImage("https://cdn.sspai.com/2017/06/25/d286b4c6c0c1dc04f9c2df82d5f75722.png?imageView2/2/w/1120/q/90/interlace/1/ignore-error/1"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(//颜色过滤  设置透明度为0.6  趋近于1就不透明
                      Colors.yellow.withOpacity(0.6),
                      BlendMode.hardLight,//clear、srcOut  不透明  color、colorBurn 全透明... hardLight高亮
                    )
                )
            ),
          ),
          ListTile(
              leading:Icon(Icons.message,size: 22.0,color: Colors.black12,),//设置左边图片
              title: Text("Message",textAlign: TextAlign.right,),//文字靠右对齐
              trailing: Icon(Icons.message,size: 22.0,color: Colors.black12,),//设置右边图片
              onTap: (){
                Navigator.pop(context);//设置点击了之后关闭抽屉
              }
          ),
          ListTile(
            leading:Icon(Icons.message,size: 22.0,color: Colors.black12,),//设置左边图片
            title: Text("Message",textAlign: TextAlign.right,),//文字靠右对齐
            trailing: Icon(Icons.message,size: 22.0,color: Colors.black12,),//设置右边图片
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            leading:Icon(Icons.message,size: 22.0,color: Colors.black12,),//设置左边图片
            title: Text("Message",textAlign: TextAlign.right,),//文字靠右对齐
            trailing: Icon(Icons.message,size: 22.0,color: Colors.black12,),//设置右边图片
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
