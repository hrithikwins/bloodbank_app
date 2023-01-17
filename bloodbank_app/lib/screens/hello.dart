import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Container(
              width: 80,
              height: double.infinity,
              color: Colors.red,
              child: Text(
                "I am red",
              ),
            ),
            Container(
              width: 80,
              height: double.infinity,
              color: Colors.blue,
              child: Text(
                "I am blue",
              ),
            ),
            Container(
              width: 80,
              height: double.infinity,
              color: Colors.green,
              child: Text(
                "I am green",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
