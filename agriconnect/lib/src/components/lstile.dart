import 'package:agriconnect/src/components/table.dart';
import 'package:agriconnect/src/themes.dart/theme.dart';
import 'package:flutter/material.dart';

class LsTile extends StatefulWidget {
  const LsTile({super.key});

  @override
  State<LsTile> createState() => _LsTileState();
}

class _LsTileState extends State<LsTile> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
          child: ListTile(
        title: Text("FarmName"),
        subtitle: Text("allocated"),
        tileColor: ColorSchemes.primary,
        trailing: IconButton(
          icon: Icon(Icons.keyboard_arrow_down),
          onPressed: () {
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
          },
        ),
      )),
    );
  }
}
