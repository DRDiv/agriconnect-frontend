import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('AgriConnect'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
              child: Center(
            child: SizedBox(
              width: width * 0.6,
              child: Column(children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "User ID",
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Password"),
                )
              ]),
            ),
          ))
        ],
      ),
    );
  }
}
