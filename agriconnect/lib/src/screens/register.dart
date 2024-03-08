import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _textEditingControllerName =
      TextEditingController();
  final TextEditingController _textEditingControllerAadhar =
      TextEditingController();
  final TextEditingController _textEditingControllerPassword =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(title: Text('Register as Farmer')),
        body: Center(
          child: Form(
            child: SizedBox(
              width: width * 0.8,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(labelText: "Name"),
                    controller: _textEditingControllerName,
                  ),
                  TextFormField(
                    decoration:
                        InputDecoration(labelText: "Aadhar Card number"),
                    controller: _textEditingControllerAadhar,
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "Create password"),
                    controller: _textEditingControllerPassword,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.symmetric(vertical: 4),
                    child: SizedBox(
                        width: width * 0.75,
                        child: ElevatedButton(
                            onPressed: () {}, child: const Text("Confirm"))),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
