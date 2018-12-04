# nihao_flutter

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.io/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.io/docs/cookbook)

For help getting started with Flutter, view our 
[online documentation](https://flutter.io/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.


#### flutter开发 使用google MaterialApp主题

1.  runAPP()中填写主视图类
    ```
    void main() => runApp(MyApp());
    ```
2. MyApp中大多都继承自无状态控件StatelessWidget，在返回的时候返回MaterialApp(),MaterialAPP()中能配置的参数为：
    ```
    debugShowCheckedModeBanner: false, //右上角的debug的显示
     title: 'Flutter Demo',
    theme: ThemeData(
        primarySwatch: Colors.yellow, //只有在MaterApp中配置主题
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70
      ),
      home: Home(), //设置主页面
    ```
3. 在Home类中写主页面视图 ，大多继承自stateless,在返回时返回Scaffold(),Scaffold()中能配置appbar，body等
![](resource/874C0C2B-41B6-42FB-B1FF-F265336D46C5.png)



##### 使用抽屉drawer
   **在scaffold()中使用**

*    1 简单使用

![](resource/8A226E8F-4F79-4186-B5B1-0F6443A2559A.png)

*   2  配合listviewlistTitle和DrawerHeader使用

     **删除appbar中的leading 如果有drawer属性会自动在appbar中生成一个菜单图标 点击可打开菜单**

     ![](resource/9973E323-1D67-4EE7-B49C-30301411A3D7.png)
    ![](resource/97AAF2A2-EA79-4D9A-87D3-CC63B4B0C24D.png)


* 使用用户信息作为头部
![](resource/6C521AC9-AE81-4E10-956F-8CE32777B7E2.png)

##### 使用底部导航栏
   **属性：bottomNavigationBar**
   BottomNavigation应设置成动态控件 因为需要用户点击去切换选项卡

   ![](resource/93564042-EE45-4F8B-8CC9-299699A7F468.png)
   在选项卡部分 可以直接替换成list列表页面
    ![](resource/EAF26BFE-5FE4-4C6F-8CCB-6628643AD1B6.png)







