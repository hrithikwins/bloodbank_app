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
              bloodBankDetails(context),
              SizedBox(
                height: 150,
                child: Column(
                  children: [
                    bloodDetails(),
                    bloodCounter(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Text bloodCounter() => Text("Counter part");

  Text bloodDetails() => Text("B+ve");

  Container bloodBankDetails(BuildContext context) {
    return Container(
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
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Text(
          "Sarita\nBlood\nBank",
          style: TextStyle(
            fontSize: 28,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
