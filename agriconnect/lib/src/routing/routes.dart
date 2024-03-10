import 'dart:ui';
import 'package:agriconnect/src/screens/login.dart';
import 'package:agriconnect/src/screens/welcome.dart';
import 'package:agriconnect/src/screens/register.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

GoRouter goRouter = GoRouter(initialLocation: "/welcome", routes: [
  GoRoute(
    path: "/",
    pageBuilder: (context, state) {
      return CustomTransitionPage(
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0);
          const end = Offset.zero;
          const curve = Curves.ease;

          var tween = Tween(begin: begin, end: end).chain(
            CurveTween(curve: curve),
          );

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
        transitionDuration: const Duration(milliseconds: 750),
        child: WelcomeScreen(),
      );
    },
  ),
  GoRoute(
    path: "/login",
    pageBuilder: (context, state) {
      return CustomTransitionPage(
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0);
          const end = Offset.zero;
          const curve = Curves.ease;

          var tween = Tween(begin: begin, end: end).chain(
            CurveTween(curve: curve),
          );

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
        transitionDuration: const Duration(milliseconds: 750),
        child: LoginScreen(),
      );
    },
  ),
  GoRoute(
    path: "/register",
    pageBuilder: (context, state) {
      return CustomTransitionPage(
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0);
          const end = Offset.zero;
          const curve = Curves.ease;

          var tween = Tween(begin: begin, end: end).chain(
            CurveTween(curve: curve),
          );

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
        transitionDuration: const Duration(milliseconds: 750),
        child: RegisterScreen(),
      );
    },
  )
]);
