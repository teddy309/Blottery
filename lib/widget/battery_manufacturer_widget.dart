import 'package:battery/data/battery_manufacturer_data.dart';
import 'package:battery/Model/battery_manufacturer.dart';
import 'package:flutter/material.dart';

class DataTableWidget extends StatefulWidget {
  @override
  DataTableWidgetState createState() => DataTableWidgetState();
}

class DataTableWidgetState extends State<DataTableWidget> {
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
        width: width * 1.4,
        child: ListView(
          children: <Widget>[
            buildDataTable(),
          ],
        ),
      ),
    );
  }

  Widget buildDataTable() => DataTable(
        sortAscending: ascending,
        sortColumnIndex: 1,
        columns: batteryColumns
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
                    DataCell(Text('${battery.manufacturer}')),
                    DataCell(Text('${battery.batteryType}')),
                    DataCell(Text('${battery.grant}')),
                  ],
                  // onSelectChanged: (bool selected) =>
                  //     onSelectedRowChanged(selected: selected, battery: battery),
                ))
            .toList(),
      );

  void onSortColumn({int columnIndex, bool ascending}) {
    if (columnIndex == 1) {
      setState(() {
        if (ascending) {
          batteries.sort((a, b) => a.manufacturer.compareTo(b.manufacturer));
        } else {
          batteries.sort((a, b) => b.manufacturer.compareTo(a.manufacturer));
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
