// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:bloodbank_app/constants/colors.dart';
import 'package:flutter/material.dart';

class MobileNumber extends StatelessWidget {
  const MobileNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.remove),
        label: Text('Hello'),

        onPressed: () => null,
        // child: Column(
        //   children: [
        //     Icon(Icons.remove),
        //     Icon(Icons.remove),
        //     Icon(Icons.remove),
        //   ],
        // ),
      ),
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
              SizedBox(
                height: 50,
              ),
              TextButton(
                onPressed: () => {},
                child: Text(
                  "Login's",
                ),
              ),
              // coming from global theme
              ElevatedButton(
                onPressed: () => {},
                child: Text(
                  "Login's",
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.yellow,
                  ),
                ),
                onPressed: () => {},
                child: Text(
                  "Login's",
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.greenAccent,
                ),
                onPressed: () => {},
                child: Text(
                  "Login's",
                ),
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
