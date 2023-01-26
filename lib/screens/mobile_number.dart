// ignore_for_file: avoid_unnecessary_containers, duplicate_ignore, sized_box_for_whitespace, prefer_const_constructors

import 'dart:developer';
import 'package:bloodbank_app/constants/routes.dart';
import 'package:bloodbank_app/constants/colors.dart';
import 'package:flutter/material.dart';

class MobileNumber extends StatelessWidget {
  const MobileNumber({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _phoneNumberController = TextEditingController();

    log("---------------------------------------------------------");
    log("---------------mobile_number.dart------------------------");
    log("---------------------------------------------------------");
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //the enter number field
              // ignore: avoid_unnecessary_containers
              Container(
                child: Column(
                  children: [
                    Container(
                      child: const Text(
                        "Enter your mobile number",
                      ),
                    ),
                    Container(
                      // width: 365,
                      width: MediaQuery.of(context).size.width * 0.73,
                      margin: EdgeInsets.only(
                        top: 15,
                      ),
                      padding: const EdgeInsets.fromLTRB(25, 14, 25, 17),
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.8,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              20,
                            ),
                          )),
                      child: Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "+91",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: MyColors.redPrimary,
                                ),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              SizedBox(
                                width: 180,
                                child: TextField(
                                  controller: _phoneNumberController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Enter you number here',
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // add some spacing
              const SizedBox(
                height: 67,
              ),

              ElevatedButton(
                style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(265, 53))),
                onPressed: () => {
                  if (_phoneNumberController.text.isNotEmpty)
                    print(
                        "Your Phone Number is ${_phoneNumberController.text}"),
                  Navigator.pushNamed((context), Routes.otpScreen),
                },
                child: Text('Log In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
