import 'package:flutter/material.dart';
import 'package:flutter/src/material/elevated_button.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade50,
      floatingActionButton: FloatingActionButton(
        onPressed: () => {print("Im Pressed")},
        backgroundColor: Colors.red,
        child: Icon(
          Icons.add,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Image.asset(
            "assets/BloodBank.png",
          ),
        ),
      ),
    );
  }
}
