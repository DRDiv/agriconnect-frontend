import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  bool authority;
  CustomAppBar(this.authority);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  TextEditingController _inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings),
        ),
        PopupMenuButton<String>(
          onSelected: (String value) {
            if (value == 'customDropdown') {
              _showCustomDropdown(context);
            }
          },
          itemBuilder: (BuildContext context) {
            return <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'option1',
                child: Text('Option 1'),
              ),
              PopupMenuItem<String>(
                value: 'option2',
                child: Text('Option 2'),
              ),
              PopupMenuItem<String>(
                value: 'customDropdown',
                child: Text('Custom Dropdown'),
              ),
            ];
          },
        ),
      ],
    );
  }

  void _showCustomDropdown(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Custom Dropdown'),
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
                  // Handle the input from the dropdown
                  String inputValue = _inputController.text;
                  // TODO: Add your logic here
                  Navigator.pop(context); // Close the dialog
                },
                child: Text('Submit'),
              ),
            ],
          ),
        );
      },
    );
  }
}
