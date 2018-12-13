import 'package:flutter/material.dart';

class ExpansionPanelItem {
  String title;
  Widget body;
  bool isExpanded;

  ExpansionPanelItem({this.title, this.body, this.isExpanded});
}

class ExpanSionPanelDemo extends StatefulWidget {
  @override
  _ExpanSionPanelDemoState createState() => _ExpanSionPanelDemoState();
}

class _ExpanSionPanelDemoState extends State<ExpanSionPanelDemo> {
  bool _isExpanded = false;
  List<ExpansionPanelItem> _ExpansionItems;

  @override
  void initState() {
    super.initState();
    _ExpansionItems = <ExpansionPanelItem>[
      ExpansionPanelItem(
        title: "ExpansionPanel A",
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.all(16.0),
          child: Text("Content for ExpansionPanle A"),
        ),
        isExpanded: false,
      ),
      ExpansionPanelItem(
        title: "ExpansionPanel B",
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.all(16.0),
          child: Text("Content for ExpansionPanle B"),
        ),
        isExpanded: false,
      ),
      ExpansionPanelItem(
        title: "ExpansionPanel C",
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.all(16.0),
          child: Text("Content for ExpansionPanle C"),
        ),
        isExpanded: false,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ExpanSionPanel"),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ExpansionPanelList(
                  expansionCallback: (int index, bool isExpanded) {
                    setState(() {
                      /*_isExpanded = !isExpanded;*/
                      _ExpansionItems[index].isExpanded = !isExpanded;
                    });
                  },
                  children: _ExpansionItems.map((ExpansionPanelItem item) {
                    return ExpansionPanel(
                      body: item.body,
                      isExpanded: item.isExpanded,
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return Container(
                          child: Text(
                            item.title,
                            style: Theme.of(context).textTheme.title,
                          ),
                          padding: EdgeInsets.all(16.0),
                        );
                      },
                    );
                  }).toList()

                  /*[
                  ExpansionPanel(
                      headerBuilder: ((BuildContext context, bool isExpanded) {
                        return Container(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            "ExpansionPanel A",
                            style: Theme.of(context).textTheme.title,
                          ),
                        );
                      }),
                      body: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(16.0),
                        child: Text("Content for ExpansionPanle A"),
                      ),
                      isExpanded: _isExpanded),
                ],*/
                  )
            ],
          ),
        ));
  }
}
