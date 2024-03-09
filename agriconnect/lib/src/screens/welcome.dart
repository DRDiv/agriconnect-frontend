import 'package:agriconnect/src/themes.dart/theme.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFFAF9EE),
              Color(0xFFFAF9EE),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image.asset(
                    "assets/logo.png",
                    width: 150.0,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'AgriConnect',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: ColorSchemes.primary,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 70.0),
              Container(
                width: 50.0, // Set the desired width
                height: 50.0, // Set the desired height
                child: CircularProgressIndicator(
                  strokeWidth: 5.0, // Adjust the thickness of the circle
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Theme.of(context).primaryColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
