7#### flutter开发 使用google材质主题

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
![6127b2a0cb86ed634f1697246f1492bf](Flutter开发.resources/874C0C2B-41B6-42FB-B1FF-F265336D46C5.png)


##### 使用抽屉drawer
   **在scaffold()中使用**

*    1 简单实用

![c9150bfc3628be7ab4eca7c7b22ca55b](Flutter开发.resources/8A226E8F-4F79-4186-B5B1-0F6443A2559A.png)

*   2  配合listviewlistTitle和DrawerHeader使用

     **删除appbar中的leading 如果有drawer属性会自动在appbar中生成一个菜单图标 点击可打开菜单**
     
     ![717d28647a3b0c12cc79cb3c8b11405b](Flutter开发.resources/9973E323-1D67-4EE7-B49C-30301411A3D7.png)
     ![d1827d7b3758e6e973ac5caae2f813dd](Flutter开发.resources/97AAF2A2-EA79-4D9A-87D3-CC63B4B0C24D.png)

* 使用用户信息作为头部
![2345a640c71ebfee76d48c888092fd38](Flutter开发.resources/6C521AC9-AE81-4E10-956F-8CE32777B7E2.png)

##### 使用底部导航栏
   **属性：bottomNavigationBar**
   BottomNavigation应设置成动态控件 因为需要用户点击去切换选项卡
   
   ![edb07b36d3e9adeb1b582fb01b505299](Flutter开发.resources/93564042-EE45-4F8B-8CC9-299699A7F468.png)
   在选项卡部分 可以直接替换成list列表页面
   ![23229878928573ef9e77db89a1f81a05](Flutter开发.resources/EAF26BFE-5FE4-4C6F-8CCB-6628643AD1B6.png)
   
   
   
####   文本样式

*     文字样式 对齐方式 文字打下 字体颜色等设置方式
![feab7d007080ac949d112744ef724e32](Flutter开发.resources/01文本样式.png)

* 富文本设置方式
![6dd2f3b53d25a82d24e5bdd38fe37032](Flutter开发.resources/02富文本设置.png)
#### Container以及BoxDecoration等属性
![39c21c4b2c845beb1736e51cac2bd4d7](Flutter开发.resources/44775C7D-BD67-4356-8096-D3599E1AA13F.png)

![8bde08897cdb0601a111f21ca75cda4a](Flutter开发.resources/8F9060FC-ACD9-48A0-9375-D997E02CE53B.png)


#### PageView的使用

* 直接使用PageView控件
![3bf507af7cf3fe48f06947ed564260f9](Flutter开发.resources/BE83E253-F6C7-481D-8FC9-88A4C55EC1F1.png)

* 使用PageView.builder()
![a192ed8f1371950b22324fda507bce8a](Flutter开发.resources/31DB0F9D-566B-47D6-AFA3-38909D4AED4E.png)


#### GridView的使用

*     使用GridView.count()
    ![43da62af6f57c10b04af7551048efe62](Flutter开发.resources/9BA86702-74A6-415B-851F-A663CBB3282F.png)

*     使用GridView.extent()
![0ab0fc846162d39bd5c36e82bb676cbe](Flutter开发.resources/42C697A0-143B-4005-B263-E7D88F06E986.png)

*  使用GridView.Build()

![db15ed55dfa87113d890f7e0f775ee66](Flutter开发.resources/27B91318-9780-4606-B8CE-F3E3AFAC9E50.png)
#### Sliver 使用

* 使用SliverGrid  放在CustomScrollView中

![875660097e77e21c74d2944ab6c2bc39](Flutter开发.resources/CA947B43-D451-465D-A925-1C38F2D74A7D.png)

* 使用SliverList 
![f4503c9e4304bdcdc5b88604a8225bd1](Flutter开发.resources/188BA899-C76B-4212-A259-4715844E8CEB.png)

* 使用SliverAppBar
    ![3558cdb8958dd0d4e68437b3d771d327](Flutter开发.resources/09293F1A-FBAD-43BB-AA7A-D3CB2943C95D.png)
####    使用navigator 导航 

* 简单使用  如果页面有上一级页面。会主动在appBar上显示一个返回键
![c16da550b160b924f2028700f0e008af](Flutter开发.resources/E9BC0492-C7B1-4E22-94C0-9F0BA4B9BC7C.png)

* 使用 Navigator.pushNamed()
  **在maerialApp()中增加routes()字段和initialRoute字段，initialRoute字段作用是打开时显示的主界面。**
  **在routes字段中，用一个集合表示按照名字的路由集合。“/”表示主界面，按下返回键依旧会返回到主界面** 
    
    ![b26ec255966161125f2735bf13f8ade7](Flutter开发.resources/39E707C0-58F5-4CE6-9656-20A4B33D976A.png)
    ![92851949f5ad389c99ca5134ead91f59](Flutter开发.resources/77847589-3FF2-4099-AC94-4A5D3D663738.png)
    

*  返回上一页面
```
   Navigator.pop(context)；
 //Navigator.of(context).pop();
```

#### 主题 
    “需要在控件中设置主题Color”
*  修改某些页面的主题
![bb1f7f5ce10a5c729f4b63feaab18663](Flutter开发.resources/7D1168DF-9E9D-484E-991D-1F489AB3CD9C.png)

* 修改页面主题
![63583aede6262750cd321d37b89b2c2a](Flutter开发.resources/23691136-74CD-469F-9763-97CACB2079E3.png)

* 修改部分主题  其他的不变
![dfbd87fac9940d54242d6797d7e4e9a9](Flutter开发.resources/25A3D3A0-44AB-4A1A-830A-E38B4D23EFB7.png)

#### 文本输入控件
![0dde54cf7a69a57ea517d0b431b0fe25](Flutter开发.resources/61148244-0024-4145-BD4F-EC6190DED5BB.png)

*  添加textFiled的控制器
    ![e730adfc6f2924ee4e4150b1c488acb9](Flutter开发.resources/697ACD36-9D6F-4741-B5E0-4710599541C9.png)
        **在initState()方法中添加监听器  在dispose()方法中销毁掉TextEditingController,否则会消耗性能**
        
####  表单
![43022f25ddbc27be30bf8a366d8da87f](Flutter开发.resources/0A84415F-99C4-46BA-A8DF-33597840BDBC.png)

 **在TextFormFiled中有一个onSave()方法。点击完成时候 会获取控件中的值给GlobalKey**

*  保存和获取表单数据
![366e15d49130ca66b7b063dad1e0a7ca](Flutter开发.resources/181B6D30-2385-4EF9-B914-8860EE787F2E.png)

* 验证表单数据
    1. 在TextFormFiled中加入validator属性，添加方法 
![d925cc6e557d2aa3099120dcf83a02f1](Flutter开发.resources/53CCF0DD-5B4B-4A7C-8AB3-3B6B2BCBC530.png)

    2. 在按钮点击的时候。去验证一下表单数据
    ![5d6be4d7a73e1381ec3c2459032a77d7](Flutter开发.resources/80F0E73C-FEE4-4DC9-8484-7AB4166348AD.png)
     **_registerSave在RaiseButton中的onPressed属性中添加了**
   3.自动验证表单
   **在TextFormFiled中添加autovalidate，新建一个bool ifautovalidate = false;给autovalidate作为值，然后根据情况去判断**
![ab7db9ed9892c1158f8a83a43a42066f](Flutter开发.resources/9B696C96-8EEB-4D82-B361-FD1B02EFE5A1.png)

  4. SnackBar使用方法
  
```
Scaffold.of(context).showSnackBar(SnackBar(content: Text("Registering....")));
```

#### 按钮的使用

* floatingActionButton的使用
![f919aef344549f5ed9f1f5c44bead59b](Flutter开发.resources/93E46832-EB30-4DBA-AF30-BF0A03A0D42D.png)

* FlatButton的使用
![5ee07d3ec49f34d1bf747d69919a2e75](Flutter开发.resources/8CD48B7C-8C57-4EFB-9358-6C48E74A4D08.png)

* RaisedButton的使用
![4469409ed7d9b76c038660eea6ca45a3](Flutter开发.resources/B0BA8914-50A1-4A13-9751-80E7FDAA52A2.png)

* OutlineButton的使用
![737b9600246514b904910ba4e95c208d](Flutter开发.resources/E86FDE76-CF6B-4E5A-B709-E4D7CA2AA33A.png)

* 按钮占用宽度的设置
![94f0d56b0e21fbe1fd08705b9984c144](Flutter开发.resources/589FFEDF-3A44-4C38-9D5C-2AAAD7185EBD.png)

* 占满所有的空间
![d57d93dabbb1aa352871fddb10a9932a](Flutter开发.resources/1A424A9B-8F71-4397-82E5-6609477C87D4.png)

* 水平平均分的按钮 ButtonBar

![0fae719c009018c3f0eedfb3d7e8eba8](Flutter开发.resources/B28F0B88-DA2F-4088-9B48-DF40B134461C.png)

#### 弹出式菜单的使用。
**一般结合appbar里面的actions属性使用**
![c7935dc09743a46c209102c477a1befc](Flutter开发.resources/5E0E024B-1A4D-4088-A321-A7406024D29D.png)

#### DateTime的使用
![dbb6e6ddb454abbe5d31087462305cea](Flutter开发.resources/7B3C804E-CF38-45D4-8008-80C5C5AC3F03.png)
**设置默认显示的日期为当天 最小日期为2018-12-4。最大日期为2019-1-1**
![5088cfe2f39db167a956a1b24473577c](Flutter开发.resources/70C20514-637C-409C-AD6B-5753B466E900.png)

#### TimeOfDay的使用
![7faa1e76a3c1a641dfa542383f3b5be7](Flutter开发.resources/EFE83088-5AB6-4CCD-A29D-2E05F2462669.png)
**设置默认显示时间为现在**
![cc85ac09d5ecef5c276706b1b2f973e3](Flutter开发.resources/5F30D101-B8C6-4215-ADAE-2C8C228B96E0.png)
#### 对话框的使用

1. simpleDialog
    * 创建枚举类
            ```
            enum Option { A, B, C }
            ```
    * 使用RaiseButton的点击事件进行对话框弹出   
        ```
         RaisedButton(
                onPressed: _showDialog,
                child: Text("显示对话框"),
                color: Colors.blue,
                textColor: Colors.white,
                shape: StadiumBorder(),
                elevation: 5.0,
                highlightElevation: 0.0,
                )
        ```

      * 显示对话框 并获取点击的值
      ![f782a812fb4d883e70e316a035df3c63](Flutter开发.resources/81572F3D-8398-4F1C-A99E-6563B7CF70CE.png)
**SimpleDialog的children是：SimpleDialogOption**


2. 使用AlertDialog

* 创建枚举类 
    `enum Result {
      ok,
      cancle,
    }`
    
    

*   使用floatingActonButton弹出对话框
![8b65269985ca4126c0e493c5f47ddb3f](Flutter开发.resources/1B7D23D6-656B-4EBA-90EF-0B24AED57059.png)

* 显示对话框并获取点击的值
![24a17308c411c3761065cc4338e1456d](Flutter开发.resources/4F21427A-D216-4DA8-B1D7-661A5136EEFB.png)

3. 使用BottomSheetDialog 
    * 创建全局变量
    `var _bottomSheetGloablKey =GlobalKey<ScaffoldState>();`
    * 使用RaiseButton来弹出对话框
        ![363d6acae0950fb1b9506c63f99b591b](Flutter开发.resources/68234773-EF72-4F09-BE35-D85515D16C93.png)
    * 显示对话框
    ![4bea419f7da3430c53a75544f20b2b8d](Flutter开发.resources/B8A8401F-0279-49EC-A021-C4D09FD17F1F.png)
    *bottomSheetDialog弹出后 不会主动消失 主界面也可以点击  对话框也可以点击操作*
    
    
4. 使用ModalBottomSheet
![d956145f7847e74155a20ad97f977627](Flutter开发.resources/FBBAA9E4-40B8-4B4B-8DEA-D313750C2AAC.png)
*ModalBottomSheet从底部弹出 弹出后不能操作主界面*

####  ExpansionPanel 可折叠的布局 

*     ExpansionPanel的单独使用
![d40d506166863aa257f7d1d2c34d3268](Flutter开发.resources/415FC428-F4E1-4F08-B280-E394ECB8EB9C.png)

* 多个一起使用
    1. 第一步创建类、填充数据
    ![075f2ee10479adb5db8b9149459d9b63](Flutter开发.resources/738FCA96-0DC9-458B-B8E6-4F14376FFDAC.png)
    2. 显示
    ![465b1a4592ae769e962fa9e48a979103](Flutter开发.resources/E0A0090D-9354-4790-98C9-D800FB02AFF3.png)
    



 
    






    
    


    

    




     


