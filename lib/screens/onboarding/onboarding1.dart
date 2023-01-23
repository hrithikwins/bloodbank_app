import 'package:bloodbank_app/screens/onboarding/onboarding2.dart';

import '../../constants/onboarding_data.dart';
import 'package:flutter/material.dart';

import '../../widgets/onboarding_widget.dart';

class MyOnboardingPage1 extends StatelessWidget {
  const MyOnboardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: InkWell(
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyOnboardingPage2()),
            )
          },
          child: Container(
            color: Colors.red,
            width: double.infinity,
            child: onboardingWidget(
              imageUrl: onboardingData[1]["image_url"]!,
              text: onboardingData[1]["text"]!,
            ),
          ),
        ),
      ),
    );
  }
}
