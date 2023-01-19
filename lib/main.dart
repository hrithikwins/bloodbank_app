<<<<<<< HEAD
import 'package:bloodbank_app/screens/onboarding1.dart';
import 'package:bloodbank_app/screens/splash_screen.dart';
=======
import 'package:bloodbank_app/screens/onboarding.dart';
>>>>>>> e27d73ecb6d02ec18c56bef5f4c5d0c43a60230f
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
      title: 'Blood Bank App',
      home: const MyHomePage(),
    );
  }
}

