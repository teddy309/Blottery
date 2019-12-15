import 'package:flutter/material.dart';
import '../widget/battery_manufacturer_widget.dart';

class Category03 extends StatefulWidget {
  _Category03State createState() => _Category03State();
}

class _Category03State extends State<Category03> with SingleTickerProviderStateMixin {
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
