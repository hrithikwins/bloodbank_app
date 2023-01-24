// ignore_for_file: avoid_unnecessary_containers, duplicate_ignore, sized_box_for_whitespace

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
                      width: 365,
                      margin: EdgeInsets.only(
                        top: 15,
                      ),
                      padding: const EdgeInsets.fromLTRB(60, 14, 60, 17),
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
                                  decoration: InputDecoration(
                                    // prefix: Text(
                                    //   '+91',
                                    //   style: TextStyle(
                                    //     fontSize: 20,
                                    //     color: MyColors.redPrimary,
                                    //   ),
                                    // ),
                                    border: InputBorder.none,
                                    //
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
                onPressed: () => {},
                child: const Text("Login"),
              ),

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
