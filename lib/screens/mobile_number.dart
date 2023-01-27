// ignore_for_file: avoid_unnecessary_containers, duplicate_ignore, sized_box_for_whitespace

import 'dart:developer';

import 'package:bloodbank_app/constants/colors.dart';
import 'package:bloodbank_app/constants/routes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _phoneNumberController = TextEditingController();
    log("---------------------------------------------");
    log("---------mobile_number.dart------------");
    log("---------------------------------------------");
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //the enter number field
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/blood-bag-login-scrn.png',
                        scale: 5.0,
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: const Text(
                        "Login to Blood Bank",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),

                    // Text field Container
                    Container(
                      // width: 365,
                      // 48 as padding on both sides and 265 to be width
                      // so the percentage is ~73%
                      width: MediaQuery.of(context).size.width * 0.73,
                      margin: const EdgeInsets.only(
                        top: 20,
                      ),
                      padding:
                          const EdgeInsets.only(left: 30, top: 14, bottom: 14),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            25,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "+91-",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: MyColors.redPrimary,
                                ),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              SizedBox(
                                width: 180,
                                child: TextField(
                                  // validator: (value) => ,
                                  // onChanged: (value) =>
                                  //     {_phoneNumberController.text = value},
                                  controller: _phoneNumberController,
                                  style: const TextStyle(
                                    fontSize: 20,
                                  ),
                                  decoration: const InputDecoration(
                                    // prefix: Text(
                                    //   '+91',
                                    //   style: TextStyle(
                                    //     fontSize: 20,
                                    //   ),
                                    // ),

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
                height: 50,
              ),

              ElevatedButton(
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(
                    Size(
                      MediaQuery.of(context).size.width * 0.40,
                      50,
                    ),
                  ),
                ),
                onPressed: () => {
                  if (_phoneNumberController.text.isNotEmpty &&
                      _phoneNumberController.text.length == 10)
                    {
                      print(
                          "Your phone number is ${_phoneNumberController.text}"),
                      Navigator.pushNamed(context, Routes.otpScreen)
                    }
                },
                child: const Text("log in"),
              ),

              TextButton(
                onPressed: () =>
                    {Navigator.pushNamed(context, Routes.signUpScreen)},
                child: const Text("sign up"),
              ),

              // Dummy Button Design Container
              // Container(
              //   height: 53,
              //   width: 263,
              //   decoration: BoxDecoration(
              //     color: MyColors.redPrimary,
              //     borderRadius: BorderRadius.circular(4),
              //   ),
              //   child: Center(
              //     child: Text(
              //       "Login",
              //       style: TextStyle(
              //         color: Colors.white,
              //       ),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
