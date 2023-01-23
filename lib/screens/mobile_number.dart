// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:bloodbank_app/constants/colors.dart';
import 'package:flutter/material.dart';

class MobileNumber extends StatelessWidget {
  const MobileNumber({super.key});

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
<<<<<<< HEAD
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
                        ),
                      ),
                      child: Text(
                        "+91",
                        style: TextStyle(
                          fontSize: 18,
                          color: MyColors.redPrimary,
=======
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
>>>>>>> bfec6bc3040a8f4f780462438e929e5ece0d4e95
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

              // add some spacing
<<<<<<< HEAD
              SizedBox(
                height: 50,
=======
              const SizedBox(
                height: 67,
>>>>>>> bfec6bc3040a8f4f780462438e929e5ece0d4e95
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
