import 'package:flutter/material.dart';

import 'onboarding/onboarding0.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  initState() {
    // Future.delayed(
    //   Duration(
    //     seconds: 3,
    //   ),
    //   () =>
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => MyOnboardingPage()),
    // );
    // );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: InkWell(
          onTap: () => {
            // navigation code here
            Navigator.pushNamed(context, "/onboarding")
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
