import 'package:flutter/material.dart';

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
