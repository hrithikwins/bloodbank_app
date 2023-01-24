import 'package:bloodbank_app/screens/onboarding/onboarding0.dart';
import 'package:bloodbank_app/screens/onboarding_screen.dart';
import 'package:bloodbank_app/widgets/onboarding_widget.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Splash Screen",
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Icon(
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
            //     builder: (context) => OnboardingPage(),
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
