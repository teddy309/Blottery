import 'package:flutter/material.dart';
import '../widget/battery_region_widget.dart';

class Category04 extends StatefulWidget {
  _Category04State createState() => _Category04State();
}

class _Category04State extends State<Category04> with SingleTickerProviderStateMixin {
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
