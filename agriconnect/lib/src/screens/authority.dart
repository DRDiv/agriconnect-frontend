import 'package:flutter/material.dart';

class AuthorityScreen extends StatefulWidget {
  const AuthorityScreen({super.key});

  @override
  State<AuthorityScreen> createState() => _AuthorityScreenState();
}

class _AuthorityScreenState extends State<AuthorityScreen> {
  TextEditingController _inputController = TextEditingController();
  String selectedValue = 'Select an option';
  List<String> data1 = ['Select an option'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
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
                            .copyWith(color: Theme.of(context).primaryColor),
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
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DropdownButton(
                value: selectedValue,
                isExpanded: true,
                iconSize: 50.0,
                style: TextStyle(color: Colors.black),
                underline: Container(
                  height: 2,
                  color: Colors.blueAccent,
                ),
                items: data1.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {})
          ],
        ),
      ),
    );
  }
}
