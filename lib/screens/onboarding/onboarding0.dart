import 'package:bloodbank_app/screens/onboarding/onboarding1.dart';
import 'package:flutter/material.dart';

import '../../constants/onboarding_data.dart';
import '../../widgets/onboarding_widget.dart';

class MyOnboardingPage extends StatelessWidget {
  const MyOnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: InkWell(
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyOnboardingPage1()),
            ),
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
