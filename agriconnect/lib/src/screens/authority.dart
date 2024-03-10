import 'package:agriconnect/src/components/bottomnav.dart';
import 'package:agriconnect/src/components/resourcestable.dart';
import 'package:agriconnect/src/themes.dart/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AuthorityScreen extends StatefulWidget {
  const AuthorityScreen({super.key});

  @override
  State<AuthorityScreen> createState() => _AuthorityScreenState();
}

class _AuthorityScreenState extends State<AuthorityScreen> {
  TextEditingController _inputController = TextEditingController();
  String selectedValue = 'farm';
  List<String> data1 = ['farm'];
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: ColorSchemes.primary,
          foregroundColor: ColorSchemes.tertiary,
          actions: [
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Enter Referral Code:',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: Theme.of(context).primaryColor),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            controller: _inputController,
                            decoration: InputDecoration(
                              labelText: 'Enter text',
                            ),
                          ),
                          SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {
                              String inputValue = _inputController.text;

                              Navigator.pop(context);
                            },
                            child: Text('Submit'),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              icon: const Icon(Icons.settings),
            ),
          ]),
      backgroundColor: ColorSchemes.tertiary,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: ColorSchemes.secondary,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  SizedBox(
                    width: width * 0.5,
                    child: Text(
                      "Farm under me",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.1,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    child: Container(
                      width: width * 0.35,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(15)),
                      child: DropdownButton(
                          value: selectedValue,
                          isExpanded: true,
                          iconSize: 50.0,
                          style: TextStyle(color: Colors.black),
                          underline: Container(
                            height: 2,
                            color: Colors.blueAccent,
                          ),
                          items: data1
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (value) {}),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: ColorSchemes.secondary,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  SizedBox(
                    width: width * 0.5,
                    child: Text(
                      "My reportees",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.1,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    child: Container(
                      width: width * 0.35,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(15)),
                      child: DropdownButton(
                          value: selectedValue,
                          isExpanded: true,
                          iconSize: 50.0,
                          style: TextStyle(color: Colors.black),
                          underline: Container(
                            height: 2,
                            color: Colors.blueAccent,
                          ),
                          items: data1
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (value) {}),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text("My resources"),
              trailing: IconButton(
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
                        return ResourcesTable();
                      });
                },
                icon: Icon(Icons.keyboard_arrow_down),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
