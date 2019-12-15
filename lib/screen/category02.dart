import 'package:flutter/material.dart';
import '../widget/battery_state_widget.dart';

class Category02 extends StatefulWidget {
  _Category02State createState() => _Category02State();
}

class _Category02State extends State<Category02> with SingleTickerProviderStateMixin{
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
}
