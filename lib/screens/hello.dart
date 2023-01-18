import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
                      "Enter your mobile number",
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
