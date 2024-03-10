import 'package:flutter/material.dart';

class FarmerScreen extends StatefulWidget {
  const FarmerScreen({super.key});

  @override
  State<FarmerScreen> createState() => _FarmerScreenState();
}

class _FarmerScreenState extends State<FarmerScreen> {
  TextEditingController _inputController = TextEditingController();
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
                        'Enter BPL ID :',
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
    );
  }
}
