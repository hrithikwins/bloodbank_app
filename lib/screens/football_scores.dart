import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FootBallScoresScreen extends StatefulWidget {
  const FootBallScoresScreen({super.key});

  @override
  State<FootBallScoresScreen> createState() => _FootBallScoresScreenState();
}

class _FootBallScoresScreenState extends State<FootBallScoresScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      child: Text(
        "Football Scores",
      ),
    )));
  }
}
