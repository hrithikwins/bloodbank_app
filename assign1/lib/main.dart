import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    body: SafeArea(
        child: Container(
      child: MyCustomWidget(
        myColor: Colors.blueAccent,
        myHeight: 100.0,
      ),
    )),
  )));
}

class MyCustomWidget extends StatelessWidget {
  final Color myColor;
  final double myHeight;

  const MyCustomWidget(
      {super.key, required this.myColor, required this.myHeight});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: myHeight,
          color: myColor,
        ),
        SizedBox(
          height: 50,
        )
      ],
    );
  }
}
