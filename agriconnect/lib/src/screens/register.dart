import 'package:agriconnect/src/constants/urls.dart';
import 'package:agriconnect/src/models/person.dart';
import 'package:agriconnect/src/services/authorization.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _textEditingControllerName =
      TextEditingController();

  final TextEditingController _textEditingControllerUsername =
      TextEditingController();
  final TextEditingController _textEditingControllerMobileNumber =
      TextEditingController();
  final TextEditingController _textEditingControllerCreatePassword =
      TextEditingController();
  final TextEditingController _textEditingControllerConfirmPassword =
      TextEditingController();
  final TextEditingController _textEditingControllerIdentityNumber =
      TextEditingController();

  String _selectedDocument = "";

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: GestureDetector(
        onHorizontalDragEnd: (details) {
          if (details.primaryVelocity! > 0) {
            context.pop();
          }
        },
        child: Container(
          child: Stack(
            children: [
              Image.asset(
                'assets/image_1.png',
                fit: BoxFit.fill,
                width: double.infinity,
                height: double.infinity,
              ),
              Container(
                margin: const EdgeInsets.only(top: 40.0),
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Form(
                          child: SizedBox(
                            width: width * 0.8,
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                    labelText: "Name",
                                    labelStyle:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  controller: _textEditingControllerName,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    labelText: "Username",
                                    labelStyle:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  controller: _textEditingControllerUsername,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    labelText: "Mobile Number",
                                    labelStyle:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  controller:
                                      _textEditingControllerMobileNumber,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    labelText: "Create Password",
                                    labelStyle:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  controller:
                                      _textEditingControllerCreatePassword,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    labelText: "Confirm Password",
                                    labelStyle:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  controller:
                                      _textEditingControllerConfirmPassword,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                DropdownButtonFormField<String>(
                                  value: _selectedDocument,
                                  onChanged: (newValue) {
                                    setState(() {
                                      _selectedDocument = newValue!;
                                    });
                                  },
                                  items: const [
                                    DropdownMenuItem<String>(
                                      value: "",
                                      child: Text("-"),
                                    ),
                                    DropdownMenuItem<String>(
                                      value: "aadhar",
                                      child: Text("Aadhar"),
                                    ),
                                    DropdownMenuItem<String>(
                                      value: "passport",
                                      child: Text("Passport"),
                                    ),
                                    DropdownMenuItem<String>(
                                      value: "driving_license",
                                      child: Text("Driving License"),
                                    ),
                                  ],
                                  decoration: InputDecoration(
                                    labelText: "Select Identification Document",
                                    labelStyle:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    labelText: "Identity Number",
                                    labelStyle:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  controller:
                                      _textEditingControllerIdentityNumber,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width: width * 0.75,
                                  child: ElevatedButton(
                                    onPressed: () async {
                                      if (_textEditingControllerName
                                              .text.isEmpty ||
                                          _textEditingControllerUsername
                                              .text.isEmpty ||
                                          _textEditingControllerMobileNumber
                                              .text.isEmpty ||
                                          _textEditingControllerCreatePassword
                                              .text.isEmpty ||
                                          _textEditingControllerConfirmPassword
                                              .text.isEmpty ||
                                          _selectedDocument == "" ||
                                          _textEditingControllerIdentityNumber
                                              .text.isEmpty) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                                "Please fill in all the required fields."),
                                            backgroundColor: Colors.red,
                                          ),
                                        );
                                        return;
                                      }

                                      if (_textEditingControllerCreatePassword
                                              .text !=
                                          _textEditingControllerConfirmPassword
                                              .text) {
                                        // Display an error message for password mismatch.
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content:
                                                Text("Passwords do not match."),
                                            backgroundColor: Colors.red,
                                          ),
                                        );
                                        return;
                                      }
                                      Person person = Person(
                                        _textEditingControllerUsername.text,
                                        _textEditingControllerName.text,
                                        _textEditingControllerMobileNumber.text,
                                        _textEditingControllerIdentityNumber
                                            .text,
                                        _selectedDocument,
                                      );
                                      await register(
                                          person,
                                          _textEditingControllerConfirmPassword
                                              .text);
                                    },
                                    child: const Text("Confirm"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
