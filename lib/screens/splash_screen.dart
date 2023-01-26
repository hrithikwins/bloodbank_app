
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
      appBar: AppBar(
        title: const Text(
          "Splash Screen",
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: const Icon(
          Icons.add,
        ),
      ),
      body: SafeArea(
        child: InkWell(
          onTap: () => {
            Navigator.pushNamed(context, '/onboarding'),
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => OnboardingScreen(),
            //   ),
            // )
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
