import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          'assets/image.png', // Replace with the path to your image
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
        Column(
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
                          labelStyle:
                              (Theme.of(context).textTheme.bodyMedium))),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: (Theme.of(context).textTheme.bodyMedium)),
                  )
                ]),
              ),
            )),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Not Registered? Click Here',
                  style: Theme.of(context).textTheme.bodySmall,
                ))
          ],
        ),
      ]),
    );
  }
}
