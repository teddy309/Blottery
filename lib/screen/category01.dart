import 'package:flutter/material.dart';
import 'category01Tab.dart';

class Category01 extends StatefulWidget {
  _Category01State createState() => _Category01State();
}

class _Category01State extends State<Category01> with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:1,
      child: Scaffold(
        body: Category01Tab(),
      ),
    );
  }
}