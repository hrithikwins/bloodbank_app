import '../../constants/onboarding_data.dart';
import 'package:flutter/material.dart';

import '../../widgets/onboarding_widget.dart';

class MyOnboardingPage2 extends StatelessWidget {
  const MyOnboardingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.red,
          width: double.infinity,
          child: onboardingWidget(
            imageUrl: onboardingData[0]["image_url"]!,
            text: onboardingData[0]["text"]!,
          ),
        ),
      ),
    );
  }
}
