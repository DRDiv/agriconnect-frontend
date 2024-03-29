import 'package:agriconnect/src/components/bottomnav.dart';
import 'package:agriconnect/src/constants/urls.dart';
import 'package:agriconnect/src/services/authorization.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _textEditingControllerUserID =
      TextEditingController();
  final TextEditingController _textEditingControllerPassword =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          'assets/image_1.png', // Replace with the path to your image
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
                width: width * 0.8,
                child: Column(children: [
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "User ID",
                        labelStyle: (Theme.of(context).textTheme.bodyMedium)),
                    controller: _textEditingControllerUserID,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: (Theme.of(context).textTheme.bodyMedium)),
                    controller: _textEditingControllerPassword,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      width: width * 0.75,
                      child: ElevatedButton(
                          onPressed: () async {
                            String resp = await login(
                                _textEditingControllerUserID.text,
                                _textEditingControllerPassword.text);

                            if (resp == "Successful") {
                              context.go('/choice');
                            }
                          },
                          child: const Text("Confirm"))),
                ]),
              ),
            )),
            TextButton(
                onPressed: () {
                  context.push("/register");
                },
                child: Text(
                  'Not Registered? Click Here',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.white),
                ))
          ],
        ),
      ]),
      // bottomNavigationBar: BottomNav(),
    );
  }
}
