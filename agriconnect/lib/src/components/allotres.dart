import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllotResourcesAlertDialog extends StatefulWidget {
  const AllotResourcesAlertDialog({super.key});

  @override
  State<AllotResourcesAlertDialog> createState() =>
      _AllotResourcesAlertDialogState();
}

class _AllotResourcesAlertDialogState extends State<AllotResourcesAlertDialog> {
  final TextEditingController textController1 = TextEditingController();
  final TextEditingController textController2 = TextEditingController();
  String selectedValueCrop = 'farm';
  String selectedValueAuthority = 'farm';
  List<String> dataCrop = ['farm', 'farm2'];
  List<String> dataAuthority = ['farm', 'farm2'];

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return AlertDialog(
      title: Text('Enter Information'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _biuldDropDownButton('Crop', width, selectedValueCrop, dataCrop),
          _buildTextField('Left Over', textController1, width),
          _biuldDropDownButton(
              "Authority/Farm", width, selectedValueAuthority, dataAuthority)
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            String value1 = textController1.text;
            String value2 = textController2.text;

            print('Text Field 1: $value1');
            print('Text Field 2: $value2');

            Navigator.of(context).pop();
          },
          child: Text('Submit'),
        ),
      ],
    );
  }

  Widget _buildTextField(
      String labelText, TextEditingController controller, double width) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: width * 0.3,
            child: Center(
              child: Text(
                labelText,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          SizedBox(
            width: width * 0.2,
            child: TextField(
              keyboardType: TextInputType.number,
              controller: controller,
              decoration: InputDecoration(
                hintText: 'Enter $labelText',
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _biuldDropDownButton(String labelText, double width,
      String selectedValue, List<String> data1) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: width * 0.3,
            child: Center(
              child: Text(
                labelText,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          SizedBox(
            width: width * 0.2,
            child: DropdownButton(
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
                onChanged: (value) {}),
          )
        ],
      ),
    );
  }
}
