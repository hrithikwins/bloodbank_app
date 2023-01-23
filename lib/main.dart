import 'package:bloodbank_app/screens/mobile_number.dart';
import 'package:bloodbank_app/screens/onboarding/onboarding0.dart';
import 'package:bloodbank_app/screens/onboarding_screen.dart';
import 'package:bloodbank_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

import 'screens/mobile_number.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return const MaterialApp(
      home: MobileNumber(),
=======
    return MaterialApp(
      home: MySplashScreen(),
>>>>>>> 44c03591375f871a446f2749f92dbc13a58f11e9
    );
  }
}
