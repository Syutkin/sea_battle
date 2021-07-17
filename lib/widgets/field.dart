import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  const Field({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 50, 0, 10),
      child: Table(
        defaultColumnWidth: FixedColumnWidth(28),
        border: TableBorder.all(),
        children: tableRows(),
      ),
    );
  }

  List<TableRow> tableRows() {
    List<TableRow> tableRows = [];

    int length = 10;

    final List<List<int>> _field =
        List.generate(length, (i) => List.filled(length, 0));

    for (var row in _field) {
      tableRows.add(tableRow(row));
    }
    return tableRows;
  }

  TableRow tableRow(List<int> row) {
    List<Widget> result = [];
    for (var cell in row) {
      print(cell);
      result.add(Container(
        constraints: BoxConstraints(maxHeight: 28, maxWidth: 28),
        color: Colors.lightBlue,
        alignment: Alignment.center,
        padding: EdgeInsets.all(4),
        child: Text('$cell'),
      ));
    }
    return TableRow(children: result);
  }
}
