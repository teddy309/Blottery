import 'package:battery/data/battery_recovery_data.dart';
import 'package:battery/Model/battery_recovery.dart';
import 'package:flutter/material.dart';

class RecoveryWidget extends StatefulWidget {
  @override
  RecoveryWidgetState createState() => RecoveryWidgetState();
}

class RecoveryWidgetState extends State<RecoveryWidget> {
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
        width: width * 1,
        child: ListView(
          children: <Widget>[
            buildDataTable(),
          ],
        ),
      ),
    );
  }

  static var list1 = batteryColumns.sublist(0, 3);
  static var list2 = ['비고'];
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
            )
            .toList(),
        rows: batteries
            .map((Battery battery) => DataRow(
                  selected: selectedBatteries.contains(battery),
                  cells: [
                    DataCell(Text('${battery.batteryID}')),
                    DataCell(Text('${battery.state}')),
                    DataCell(Text('${battery.dueDate}')),
                    DataCell(
                      Icon(Icons.menu),
                      onTap: (){
                        Navigator.pushNamed(context, '/recoveryPage');
                      }
                    ),
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
          batteries.sort((a, b) => a.state.compareTo(b.state));
        } else {
          batteries.sort((a, b) => b.state.compareTo(a.state));
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