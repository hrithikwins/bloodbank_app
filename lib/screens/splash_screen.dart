import 'dart:developer';

import 'package:bloodbank_app/constants/routes.dart';
import 'package:bloodbank_app/constants/shared_prefs.dart';
import 'package:bloodbank_app/providers/user_provder.dart';
import 'package:bloodbank_app/screens/onboarding/onboarding0.dart';
import 'package:bloodbank_app/screens/onboarding_screen.dart';
import 'package:bloodbank_app/widgets/onboarding_widget.dart';
import 'package:flutter/material.dart';
import "dart:math" as math;

import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import "dart:math";

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  @override
  void initState() {
    // TODO: implement initState

    animationController = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 5,
      ),
    );
    Future.delayed(
        Duration.zero,
        () => {
              animationController.forward(),
              Future.delayed(
                Duration(
                  seconds: 6,
                ),
                () => Navigator.pushNamed(context, Routes.onboardingScreen),
              ),
            });
    super.initState();

    // get the userId from localStorage
    // if userId is null then navigate to onboarding screen
    Future<String?> userId = SharedPreferences.getInstance().then(
      (prefs) =>
        prefs.getString(SharedPrefsConstant.userId),
    ).catchError((onError)=> null);
    if (userId != null || userId != "") {
      Navigator.pushNamed(context, Routes.home);
    } else {
      Navigator.pushNamed(context, Routes.onboardingScreen);
    }

    // checking if the user is logged in or not
    // Provider.of<UserProvider>(context, listen: false).userData ??
    //     Navigator.pushNamed(context, Routes.onboardingScreen);
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
            builder: (context, child) {
              log(animationController.value.toString());
              return Transform.rotate(
                // offset: Offset(-100, 10),
                // transform: Matrix4.skewY(animationController.value * 0.6),

                // angle: animationController.value * 0.3 * math.pi,
                angle: animationController.value * ((2 * math.pi)),
                // 2*math.pi = 360 degrees ..
                // angle: math.pi,
                // origin: Offset(100, 10),
                // alignment: Alignment.topCenter,
                child: child,
              );
            },
          ),
        ),
      ),
    );
  }
}
