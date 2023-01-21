import 'dart:ui';

import 'package:bloodbank_app/constants/colors.dart';
import 'package:flutter/material.dart';

class MobileNumber extends StatelessWidget {
  const MobileNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //the enter number field
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        "Enter your mobile number",
                      ),
                    ),
                    Container(
                      width: 265,
                      margin: EdgeInsets.only(
                        top: 15,
                      ),
                      padding: EdgeInsets.fromLTRB(60, 14, 60, 17),
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.8,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              20,
                            ),
                          )),
                      child: Text(
                        "+91",
                        style: TextStyle(
                          fontSize: 18,
                          color: MyColors.redPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // add some spacing
              SizedBox(
                height: 67,
              ),
              Container(
                height: 53,
                width: 263,
                decoration: BoxDecoration(
                  color: MyColors.redPrimary,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
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
