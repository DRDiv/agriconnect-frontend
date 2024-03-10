import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DropdownTable extends StatefulWidget {
  const DropdownTable({super.key});

  @override
  State<DropdownTable> createState() => _DropdownTableState();
}

class _DropdownTableState extends State<DropdownTable> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 7.5, 8, 7.5),
      child: SizedBox(
          height: height * 0.6,
          width: width,
          child: Column(
            children: [
              SizedBox(
                width: width * 0.13,
                child: Divider(
                  thickness: 4.5,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: DataTable(
                    dataTextStyle: TextStyle(color: Colors.white70),
                    columns: [
                      DataColumn(
                        label: Text(
                          'Name',
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Price',
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Quantity',
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text('Wheat')),
                        DataCell(Text('2')),
                        DataCell(Text('565')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Wheat')),
                        DataCell(Text('2')),
                        DataCell(Text('565')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Wheat')),
                        DataCell(Text('2')),
                        DataCell(Text('565')),
                      ])
                    ]),
              ),
            ],
          )),
    );
  }
}
