import 'package:bloodbank_app/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: InkWell(
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MyOnboardingPage(),
              ),
            )
          },
          child: Center(
            child: Image.asset(
              "assets/bloodbank.png",
            ),
          ),
        ),
      ),
    );
  }
}
