import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeDemo extends StatefulWidget {
  @override
  _DateTimeDemoState createState() => _DateTimeDemoState();
}

class _DateTimeDemoState extends State<DateTimeDemo> {
  DateTime selectedDateTime = DateTime.now();

  Future<void> _selectDate() async {
    final DateTime date = await showDatePicker(
        context: context,
        initialDate: selectedDateTime,
        firstDate: DateTime(2018, 12, 4),
        lastDate: DateTime(2019, 1, 1));
    if (date == null) return;

    setState(() {
      selectedDateTime = date;
    });
  }



  TimeOfDay selectTime = TimeOfDay.now();

  Future<void> _selectTime() async {
    final TimeOfDay time = await showTimePicker(
      context: context,
      initialTime: selectTime,
    );

    if (time == null) return;
    setState(() {
      selectTime = time;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DateTime"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: _selectDate,
                child: Row(
                  children: <Widget>[
                    Text(DateFormat.yMd().format(selectedDateTime)),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
              ),
              InkWell(
                onTap: _selectTime,
                child: Row(
                  children: <Widget>[
                    Text(selectTime.format(context)),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
