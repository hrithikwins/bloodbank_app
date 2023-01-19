// ignore_for_file: prefer_const_constructors

import 'package:bloodbank_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: Colors.red[400],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/health-check.png')),
            Container(
              padding: EdgeInsets.only(left: 57, right: 56),
              child: Text(
                "To be responsible donor you must check your blood group.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 22, color: Colors.white70, fontFamily: 'Kalam'),
              ),
            )
          ],
        ),
      )),
    );
  }
}
