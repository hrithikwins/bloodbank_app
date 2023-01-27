import 'package:bloodbank_app/constants/onboarding_data.dart';
import 'package:bloodbank_app/screens/mobile_number.dart';
import 'package:bloodbank_app/screens/onboarding/onboarding2.dart';
import 'package:flutter/material.dart';

import '../../widgets/onboarding_widget.dart';

class OnboardingPage2 extends StatelessWidget {
  const OnboardingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: InkWell(
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            )
          },
          child: Container(
            width: double.infinity,
            color: Colors.red,
            child: onboardingWidget(
              onboardingData[2]["text"]!,
              imageUrl: onboardingData[2]["image_url"],
            ),
          ),
        ),
      ),
    );
  }
}
