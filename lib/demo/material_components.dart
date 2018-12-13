import 'package:flutter/material.dart';
import 'package:nihao_flutter/demo/form_demo.dart';
import 'button_demo.dart';
import 'floatingactionbutton_demo.dart';
import 'popup_menu_demo.dart';
import 'checkbox_demo.dart';
import 'radio_demo.dart';
import 'switch_demo.dart';
import 'slider_demo.dart';
import 'datetime_demo.dart';
import 'simpledialog_demo.dart';
import 'aleartdialog_demo.dart';
import 'bottomsheetdialog_demo.dart';
import 'expansionpanel_demo.dart';
class MaterialComponents extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          child: null,
        ),
        title: Text("MaterialComponents"),
      ),
      body: ListView(
        children: <Widget>[
          ListViewItem(title: "FloatingActionButtomDemo", page: FloatingActionButtonDemo(),),
          ListViewItem(title: "ButtonDemo", page: ButtonDemo()),
          ListViewItem(title: "pupUpBottomMenuDemo",page: PopUpMenuBottomDemo(),),
          ListViewItem(title: "form",page: FormDemo(),),
          ListViewItem(title: "CheckBox",page: CheckBoxDemo(),),
          ListViewItem(title: "Radio",page:RadioDemo() ,),
          ListViewItem(title: "Switch",page:SwitchDemo() ,),
          ListViewItem(title: "Slider",page:SliderDemo() ,),
          ListViewItem(title: "DateTime",page:DateTimeDemo() ,),
          ListViewItem(title: "SimpleDialog",page:SimpleDialogDemo() ,),
          ListViewItem(title: "AleartDialog",page:AleartDialogDemo() ,),
          ListViewItem(title: "BottomSheetDialog",page: BottomSheetDialogDemo(),),
          ListViewItem(title: "ExpanSionPanel",page: ExpanSionPanelDemo(),)
        ],
      ),

    );
  }
}



class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("_WidgetDemo"),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[],
            )
          ],
        ),
      ),
    );
  }
}



class ListViewItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListViewItem({this.title, this.page});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return page;
            },
          ),
        );
      },
    );
  }
}


