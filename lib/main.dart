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
    return const MaterialApp(
      home: MobileNumber(),
    );
  }
}
