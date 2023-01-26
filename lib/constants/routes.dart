// ignore_for_file: prefer_const_constructors

import 'package:bloodbank_app/screens/onboarding/onboarding0.dart';

import '../screens/onboarding/onboarding1.dart';
import '../screens/onboarding/onboarding2.dart';
import '../screens/splash_screen.dart';
var routeMap = {
  '/': (context) =>  SplashScreen(),
  '/onboarding': (context) =>  OnboardingScreen(),
  '/onboarding1': (context) => OnboardingScreen1(),
  '/onboarding2': (context) => OnboardingScreen2(),
};
