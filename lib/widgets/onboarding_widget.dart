import 'package:flutter/material.dart';

Widget onboardingWidget(
    {required String imageUrl, String text = "", int? index}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Image.asset(
        imageUrl,
      ),
      Container(
        padding: const EdgeInsets.only(
          left: 57.0,
          right: 56.0,
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      )
    ],
  );
}
