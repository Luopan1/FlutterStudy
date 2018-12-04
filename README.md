#### flutter开发 使用google材质主题

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
![1](/resource/6127b2a0cb86ed634f1697246f1492bf.png)


##### 使用抽屉drawer
   **在scaffold()中使用**

*    1 简单实用

![c9150bfc3628be7ab4eca7c7b22ca55b.png](evernotecid://854EBC5B-93A9-4D65-A794-DB813A97668F/appyinxiangcom/22667938/ENResource/p5)

*   2  配合listviewlistTitle和DrawerHeader使用

     **删除appbar中的leading 如果有drawer属性会自动在appbar中生成一个菜单图标 点击可打开菜单**

     ![717d28647a3b0c12cc79cb3c8b11405b.png](evernotecid://854EBC5B-93A9-4D65-A794-DB813A97668F/appyinxiangcom/22667938/ENResource/p6)
     ![d1827d7b3758e6e973ac5caae2f813dd.png](evernotecid://854EBC5B-93A9-4D65-A794-DB813A97668F/appyinxiangcom/22667938/ENResource/p7)

* 使用用户信息作为头部
![2345a640c71ebfee76d48c888092fd38.png](evernotecid://854EBC5B-93A9-4D65-A794-DB813A97668F/appyinxiangcom/22667938/ENResource/p8)

##### 使用底部导航栏
   **属性：bottomNavigationBar**
   BottomNavigation应设置成动态控件 因为需要用户点击去切换选项卡

   ![edb07b36d3e9adeb1b582fb01b505299.png](evernotecid://854EBC5B-93A9-4D65-A794-DB813A97668F/appyinxiangcom/22667938/ENResource/p9)
   在选项卡部分 可以直接替换成list列表页面
   ![23229878928573ef9e77db89a1f81a05.png](evernotecid://854EBC5B-93A9-4D65-A794-DB813A97668F/appyinxiangcom/22667938/ENResource/p10)







