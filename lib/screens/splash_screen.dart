import 'package:flutter/material.dart';

class MySplashScreen extends StatelessWidget {
  const MySplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //the enter number field
            Container(
              color: Colors.red.shade100,
              child: Column(
                children: [
                  Container(
                    color: Colors.green.shade100,
                    child: Text(
                      "Enter your mobile number",
                    ),
                  ),
                  Container(
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
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
