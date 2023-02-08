import 'package:bloodbank_app/constants/routes.dart';
import 'package:bloodbank_app/screens/onboarding/onboarding0.dart';
import 'package:bloodbank_app/screens/onboarding_screen.dart';
import 'package:bloodbank_app/widgets/onboarding_widget.dart';
import 'package:flutter/material.dart';
import "dart:math" as math;
// import "dart:math";

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  @override
  void initState() {
    // Future.delayed(
    //   Duration(seconds: 3),
    //   () => Navigator.pushNamed(context, Routes.onboardingScreen),
    // );
    // TODO: implement initState
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Splash Screen",
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Icon(
          Icons.add,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: AnimatedBuilder(
            animation: animationController,
            child: Image.asset(
              "assets/bloodbank.png",
            ),
            builder: (context, child) => Transform.rotate(
              // offset: Offset(-100, 10),
              angle: animationController.value * 0.3 * math.pi,
              // angle: math.pi / 4,
              // angle: math.pi,
              // origin: Offset(100, 10),
              // alignment: Alignment.topCenter,
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
