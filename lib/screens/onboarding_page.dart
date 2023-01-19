// ignore_for_file: prefer_const_constructors

// import 'package:bloodbank_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:bloodbank_app/constants/onboarding_data.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: Colors.red[400],
        child: SingleChildScrollView(
          child: Column(
            children: onboardingData.map(
              (onboardingSingleData) {
                return Column(
                  children: [
                    Container(
                        padding: EdgeInsets.all(50),
                        margin: EdgeInsets.all(50),
                        child: Image.asset(onboardingSingleData["image_url"]!)),
                    Container(
                      padding: EdgeInsets.only(left: 57, right: 56, bottom: 50),
                      child: Text(
                        onboardingSingleData['text']!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white70,
                            fontFamily: 'Kalam'),
                      ),
                    )
                  ],
                );
              },
            ).toList(),
          ),
        ),
      )),
    );
  }
}
