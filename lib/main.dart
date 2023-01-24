import 'package:bloodbank_app/screens/mobile_number.dart';
import 'package:bloodbank_app/screens/onboarding/onboarding1.dart';
import 'package:bloodbank_app/screens/onboarding/onboarding2.dart';
import 'package:flutter/material.dart';

import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bllood Bank App',
      theme: ThemeData(
          // color shades
          // accentColor: Colors.greenAccent,
          primarySwatch: Colors.red,

          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Colors.pink,
              ),
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 20)),
            ),
          ),
          textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
              // textStyle: MaterialStateProperty.all(
              //   TextStyle(fontSize: 24),
              // ),
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 20)),
            ),
          )
          // buttonTheme:
          ),
      // home: SplashScreen(),
      initialRoute: '/',
      routes: {
        "/": (context) => SplashScreen(),
        '/onboarding': (context) => OnboardingPage1(),
        '/onboarding2': (context) => OnboardingPage2(),
      },
    );
  }
}
