import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  // late RiveAnimationController _controller;

  /// Is the animation currently playing?
  bool _isPlaying = false;

  // @override
  // void initState() {
  //   super.initState();
  //   _controller = (
  //     'bloodAnimation',
  //     autoplay: true,
  //     onStop: () => setState(() => _isPlaying = false),
  //     onStart: () => setState(() => _isPlaying = true),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RiveAnimation.asset(
          'assets/blood_bank.riv',
          // animations: const ['bloodAnimation'],
          fit: BoxFit.contain,
          // controllers: [_controller],
        ),
      ),
    );
  }
}
