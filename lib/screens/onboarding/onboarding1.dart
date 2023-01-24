import 'package:bloodbank_app/constants/onboarding_data.dart';
import 'package:bloodbank_app/screens/onboarding/onboarding2.dart';
import 'package:flutter/material.dart';

import '../../widgets/onboarding_widget.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: InkWell(
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OnboardingPage2(),
              ),
            )
          },
          child: Container(
            color: Colors.red,
            child: onboardingWidget(
              onboardingData[1]["text"]!,
              imageUrl: onboardingData[1]["image_url"],
            ),
          ),
        ),
      ),
    );
  }
}
