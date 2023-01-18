import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Hello"),
      // ),
      body: SafeArea(
        child: Container(
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Image.asset(
                  "assets/health-check.png",
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 57.0,
                  right: 56.0,
                ),
                child: Text(
                  "To be a responsible donor, you must get a check-up",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
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
