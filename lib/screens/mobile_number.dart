import 'dart:ui';

import 'package:bloodbank_app/constants/colors.dart';
import 'package:flutter/material.dart';

class PhoneNumberScreen extends StatelessWidget {
  const PhoneNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //the enter number field
              Column(
                children: [
                  Container(
                    child: Text(
                      "Enter your mobile number",
                    ),
                  ),
                  SizedBox(
                    width: 265,
                    child: TextField(),
                  ),
                ],
              ),

              // add some spacing
              const SizedBox(
                height: 67,
              ),
              Container(
                height: 53,
                width: 263,
                decoration: BoxDecoration(
                  color: MyColors.redPrimary,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
