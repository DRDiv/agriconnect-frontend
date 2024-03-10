import 'package:agriconnect/src/components/table.dart';
import 'package:agriconnect/src/themes.dart/theme.dart';
import 'package:flutter/material.dart';

class LsTile extends StatefulWidget {
  String farmName;
  LsTile(this.farmName, {super.key});

  @override
  State<LsTile> createState() => _LsTileState();
}

class _LsTileState extends State<LsTile> {
  bool isExpanded = false;
  void _changeExpanded() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(bottom: 12.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        title: Text(
          widget.farmName,
          style: TextStyle(color: Colors.black),
        ),
        subtitle: Text(
          "allocated",
          style: TextStyle(color: Colors.grey),
        ),
        onTap: () {
          showModalBottomSheet(
              useSafeArea: true,
              context: context,
              backgroundColor: Colors.black,
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30))),
              barrierColor: Colors.black87.withOpacity(0.5),
              builder: (BuildContext context) {
                return DropdownTable();
              });
          _changeExpanded();
        },
      ),
    );
  }
}
