import 'package:agriconnect/src/constants/urls.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
        body: GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity! > 0) {
          context.pop();
        }
      },
      child: Stack(children: [
        Image.asset(
          'assets/image_1.png',
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
        Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Form(
              child: SizedBox(
                width: width * 0.8,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "Name",
                          labelStyle: (Theme.of(context).textTheme.bodyMedium)),
                      controller: _textEditingControllerName,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "Aadhar Card number",
                          labelStyle: (Theme.of(context).textTheme.bodyMedium)),
                      controller: _textEditingControllerAadhar,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "Create password",
                          labelStyle: (Theme.of(context).textTheme.bodyMedium)),
                      controller: _textEditingControllerPassword,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                        width: width * 0.75,
                        child: ElevatedButton(
                            onPressed: () {}, child: const Text("Confirm"))),
                    // TextButton(
                    //     onPressed: () {},
                    //     child: Text(
                    //       'Already Registered? Click Here',
                    //       style: Theme.of(context)
                    //           .textTheme
                    //           .bodySmall!
                    //           .copyWith(color: Colors.white),
                    //     ))
                  ],
                ),
              ),
            ),
          ]),
        ),
      ]),
    ));
  }
}
