import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.black,
        ),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final registerFormKey = GlobalKey<FormState>();
  bool ifautovalidate = false;
  String name;
  String password;

  void _registerSave() {
    if (registerFormKey.currentState.validate()) {//验证表单数据

      registerFormKey.currentState.save(); //保存表单里的数据
      debugPrint("userName  $name  password  $password"); //获取数据
      Scaffold.of(context).showSnackBar(SnackBar(content: Text("Registering....")));
    }else{
      setState(() {
        ifautovalidate=true;
      });
    }
  }

  String userNameValidator(value) {
    if (value.isEmpty) {
      return "userName is require";
    }
    return null;
  }

  String userPasswordlidator(value) {
    if (value.isEmpty) {
      return "password is require";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
                icon: Icon(Icons.person),
                labelText: "UserName",
                hintText: "input your Name",
                border: OutlineInputBorder(),
                helperText: "",),
            onSaved: (value) {
              name = value;
            },
            validator: userNameValidator,
            autovalidate: ifautovalidate,
          ),
          SizedBox(
            height: 16.0,
          ),
          TextFormField(
            obscureText: true,
            //密码暗文显示
            decoration: InputDecoration(
                icon: Icon(Icons.content_paste),
                labelText: "password",
                hintText: "input your password",
                border: OutlineInputBorder(),
                helperText: "", //  出错的信息会出现在输入框下面
                ),
            onSaved: (value) {
              password = value;
            },
            validator: userPasswordlidator,
            autovalidate: ifautovalidate,
          ),
          SizedBox(
            height: 16.0,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Colors.blue,
              elevation: 0.0,
              onPressed: _registerSave,
              child: Text(
                "Register",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TextFiledDemo extends StatefulWidget {
  @override
  _TextFiledDemoState createState() => _TextFiledDemoState();
}

class _TextFiledDemoState extends State<TextFiledDemo> {
  final textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    textEditingController.addListener(() {
      debugPrint("input   ${textEditingController.text}");
    });
  }

  @override
  void dispose() {
    super.dispose();
    textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
//      onChanged: (value){
//        debugPrint("onChange   $value");
//      },
      controller: textEditingController,
      onSubmitted: (value) {
        debugPrint("onSubmitted    $value");
      },
      decoration: InputDecoration(
        icon: Icon(Icons.person),
        labelText: "Name",
        hintText: "input your name",
//        border: InputBorder.none,//无边框
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0), gapPadding: 16.0),
        filled: true,
        //背景颜色  默认灰色
        fillColor: Colors.white,
      ),
    );
  }
}

class ThemDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
    );
  }
}
