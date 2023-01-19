import 'package:bloodbank_app/constants/onboarding_data.dart';
import 'package:flutter/material.dart';

class MyOnboardingPage extends StatelessWidget {
  const MyOnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.red,
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: onboardingData
                .map(
                  (onboardingSingleData) => onboardingWidget(
                    onboardingSingleData["text"]!,
                    imageUrl: onboardingSingleData["image_url"],
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }

  Widget onboardingWidget(
    String text, {
    String? imageUrl,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          child: Image.asset(
            imageUrl!,
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            left: 57.0,
            right: 56.0,
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
