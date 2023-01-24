// ignore_for_file: unused_import, prefer_const_constructors

import 'package:bloodbank_app/screens/mobile_number.dart';
import 'package:bloodbank_app/screens/onboarding/onboarding0.dart';
import 'package:bloodbank_app/screens/onboarding/onboarding1.dart';
import 'package:bloodbank_app/screens/onboarding/onboarding2.dart';
import 'package:flutter/material.dart';

import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bllood Bank App',
      theme: ThemeData(
        primarySwatch: Colors.red,
        // buttonTheme:
      ),
      // home: SplashScreen(),
      initialRoute: '/',
      routes: {
        "/": (context) => SplashScreen(),
        '/onboarding': (context) => OnboardingPage(),
        '/onboarding1': (context) => OnboardingPage1(),
        '/onboarding2': (context) => OnboardingPage2(),
      },
    );
  }
}
