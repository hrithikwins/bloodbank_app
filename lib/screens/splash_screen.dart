import 'package:flutter/material.dart';

import 'onboarding/onboarding0.dart';

class MySplashScreen extends StatelessWidget {
  const MySplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: InkWell(
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyOnboardingPage()),
            ),
            // navigation code here
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
