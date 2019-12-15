import 'package:flutter/material.dart';
//import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import '../widget/battery_dueDate_widget.dart';

class Category01Tab extends StatefulWidget {
  final Widget child;

  Category01Tab({Key key, this.child}) : super(key: key);

  _Category01TabState createState() => _Category01TabState();
}

class _Category01TabState extends State<Category01Tab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            child: DataTableWidget(),
            height: 450,
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }

  // Widget selectDate() {
  //   return Material(
  //     color: Colors.white,
  //     elevation: 0.0,
  //     child: FlatButton(
  //       onPressed: (){
  //         DatePicker.showDatePicker(
  //           context,
  //           showTitleActions: true,
  //           minTime: DateTime(2000, 1, 1),
  //           maxTime: DateTime(2019, 11, 30), 
  //           onChanged: (date){
  //             print('change $date');
  //           }, 
  //           onConfirm: (date){
  //             print('confirm $date');
  //           }, 
  //           currentTime: DateTime.now(), 
  //           locale: LocaleType.ko
  //         );
  //       },
  //       child: Text(
  //         '날짜를 선택하세요',
  //         style: TextStyle(color: Colors.black),
  //       ),)
  //   );
  // }
}