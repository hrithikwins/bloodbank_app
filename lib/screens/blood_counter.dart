import 'package:flutter/material.dart';

class BloodCounterScreen extends StatelessWidget {
  const BloodCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Row(
            children: [
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width * 0.48,
                decoration: BoxDecoration(
                  color: Colors.grey.shade600,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      10,
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
