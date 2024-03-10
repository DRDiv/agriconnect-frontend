import 'package:agriconnect/src/components/allotres.dart';
import 'package:agriconnect/src/components/bottomnav.dart';
import 'package:agriconnect/src/components/resourcestable.dart';
import 'package:agriconnect/src/constants/urls.dart';
import 'package:agriconnect/src/states/state.dart';
import 'package:agriconnect/src/themes.dart/theme.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AuthorityScreen extends StatefulWidget {
  const AuthorityScreen({super.key});

  @override
  State<AuthorityScreen> createState() => _AuthorityScreenState();
}

class _AuthorityScreenState extends State<AuthorityScreen> {
  TextEditingController _inputController = TextEditingController();
  String selectedValue = 'CLICK TO VIEW';
  List<String> data1 = ['CLICK TO VIEW', 'farm1'];
  String _selectedOption = '';

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xFF135D5E), actions: [
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
                        'Generate Referral Code:',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: Theme.of(context).primaryColor),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        controller: _inputController,
                        style: Theme.of(context).textTheme.bodyMedium,
                        decoration: InputDecoration(
                          labelText: 'Your Code',
                          labelStyle: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () async {
                          Dio dio = Dio();
                          dio.options.headers["Authorization"] = "Token $token";
                          var res = await dio.post(Urls.generateCode);

                          _inputController.text = res.data['referral_code'];
                        },
                        child: Text('Generate'),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          _inputController.text = '';
                          Navigator.pop(context);
                        },
                        child: Text('Exit'),
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
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.45,
                      child: Text(
                        "Farm under me",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Container(
                        width: width * 0.45,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(15)),
                        child: DropdownButton(
                            value: selectedValue,
                            isExpanded: true,
                            iconSize: 50.0,
                            style: TextStyle(color: Colors.black),
                            dropdownColor: Colors.white,
                            underline: Container(
                              height: 2,
                              color: Colors.lightGreen,
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
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.45,
                      child: Text(
                        "My Reportees",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Container(
                        width: width * 0.45,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(15)),
                        child: DropdownButton(
                            value: selectedValue,
                            isExpanded: true,
                            iconSize: 50.0,
                            style: TextStyle(color: Colors.black),
                            dropdownColor: Colors.white,
                            underline: Container(
                              height: 2,
                              color: Colors.lightGreen,
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
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.45,
                      child: Text(
                        "My Resources",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Container(
                        width: width * 0.45,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(15)),
                        child: DropdownButton(
                          value: selectedValue,
                          isExpanded: true,
                          dropdownColor: Colors.white,
                          iconSize: 50.0,
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedOption = newValue!;
                            });
                            showModalBottomSheet(
                                useSafeArea: true,
                                context: context,
                                backgroundColor: Colors.black,
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(30))),
                                barrierColor: Colors.black87.withOpacity(0.5),
                                builder: (BuildContext context) {
                                  return ResourcesTable();
                                });
                          },
                          style: TextStyle(color: Colors.black),
                          underline: Container(
                            height: 2,
                            color: Colors.lightGreen,
                          ),
                          items: data1
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: width * 0.7,
                child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AllotResourcesAlertDialog();
                          });
                    },
                    child: const Text("Allot resources")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
