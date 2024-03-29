import 'package:agriconnect/src/components/bottomnav.dart';
import 'package:agriconnect/src/themes.dart/theme.dart';
import 'package:flutter/material.dart';

class MandiScreen extends StatelessWidget {
  const MandiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF135D5E),
        title: Text('MANDIS NEAR YOU'),
      ),
      bottomNavigationBar: BottomNav(1),
      body: Container(
        decoration: BoxDecoration(color: ColorSchemes.background),
        child: Center(
          child: Image.asset(
            'assets/mandi.png',
            width: 0.8 * width,
          ),
        ),
      ),
    );
  }
}
