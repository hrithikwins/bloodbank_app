import 'package:flutter/material.dart';

import 'onboarding/onboarding0.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
<<<<<<< HEAD
=======
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
>>>>>>> 4332e77fad765857c99475cfbd6af650abff0b54
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
