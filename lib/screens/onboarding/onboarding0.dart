import 'package:flutter/material.dart';

import '../../constants/onboarding_data.dart';
import '../../widgets/onboarding_widget.dart';

class MyOnboardingPage extends StatelessWidget {
  const MyOnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => {
            // navigation code here
          },
          // InkWell, GestureDetector, InkResponse
          child: Container(
            color: Colors.red,
            width: double.infinity,
            child: onboardingWidget(
              imageUrl: onboardingData[0]["image_url"]!,
              text: onboardingData[0]["text"]!,
            ),
          ),
        ),
      ),
    );
  }
}
