import 'package:battery/data/battery_dueDate_data.dart';
import 'package:battery/Model/battery_dueDate.dart';
import 'package:flutter/material.dart';

class DueDateWidget extends StatefulWidget {
  @override
  DueDateWidgetState createState() => DueDateWidgetState();
}

class DueDateWidgetState extends State<DueDateWidget> {
  bool ascending;
  List<Battery> selectedBatteries;

  @override
  void initState() {
    super.initState();

    ascending = false;
    selectedBatteries = [];
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        width: width * 1.1,
        child: ListView(
          children: <Widget>[
            buildDataTable(),
          ],
        ),
      ),
    );
  }


  static var list1 = ['내용'];
  static var list2 = batteryColumns;
  var newColumn = [list1, list2].expand((x) => x).toList();
  Widget buildDataTable() => DataTable(
        sortAscending: ascending,
        sortColumnIndex: 2,
        columns: newColumn
            .map(
              (String column) => DataColumn(
                label: Text(column),
                onSort: (int columnIndex, bool ascending) => onSortColumn(
                        columnIndex: columnIndex, ascending: ascending),
                  ),
            ).toList(),
        rows: batteries
            .map((Battery battery) => DataRow(
                  selected: selectedBatteries.contains(battery),
                  cells: [
                    DataCell(
                      Icon(Icons.menu),
                      onTap: (){
                        Navigator.pushNamed(context, '/');
                      }
                    ),
                    DataCell(Text('${battery.batteryID}')),
                    DataCell(Text('${battery.dueDate}')),
                    DataCell(Text('${battery.performance}')),
                  ],
                  // onSelectChanged: (bool selected) =>
                  //     onSelectedRowChanged(selected: selected, battery: battery),
                ))
            .toList(),
      );

  void onSortColumn({int columnIndex, bool ascending}) {
    if (columnIndex == 2) {
      setState(() {
        if (ascending) {
          batteries.sort((a, b) => a.dueDate.compareTo(b.dueDate));
        } else {
          batteries.sort((a, b) => b.dueDate.compareTo(a.dueDate));
        }
        this.ascending = ascending;
      });
    }
  }

  void onSelectedRowChanged({bool selected, Battery battery}) {
    setState(() {
      if (selected) {
        selectedBatteries.add(battery);
      } else {
        selectedBatteries.remove(battery);
      }
    });
  }

  Function onPressed() {
    if (selectedBatteries.isEmpty) return null;

    return () {};
  }
}
