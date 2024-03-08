import 'package:agriconnect/src/routing/routes.dart';
import 'package:agriconnect/src/themes.dart/theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouter,
      theme: agriculturalTheme,
    );
  }
}
