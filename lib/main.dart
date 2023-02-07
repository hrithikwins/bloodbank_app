// ignore_for_file: unused_import, prefer_const_constructors

import 'package:bloodbank_app/constants/routes.dart';
import 'package:bloodbank_app/screens/all_messages.dart';
import 'package:bloodbank_app/screens/donors_map.dart';
import 'package:bloodbank_app/screens/find_donors.dart';
import 'package:bloodbank_app/screens/football_scores.dart';
import 'package:bloodbank_app/screens/history.dart';
import 'package:bloodbank_app/screens/home.dart';
import 'package:bloodbank_app/screens/incoming_requests.dart';
import 'package:bloodbank_app/screens/messages.dart';
import 'package:bloodbank_app/screens/mobile_number.dart';
import 'package:bloodbank_app/screens/onboarding/onboarding0.dart';
import 'package:bloodbank_app/screens/onboarding/onboarding1.dart';
import 'package:bloodbank_app/screens/onboarding/onboarding2.dart';
import 'package:bloodbank_app/screens/otp_screen.dart';
import 'package:bloodbank_app/screens/sign_up_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'screens/splash_screen.dart';

bool shouldUseFirestoreEmulator = false;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // if (shouldUseFirestoreEmulator) {
  //   FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8080);
  // }
  runApp(
    DevicePreview(
      enabled: true,
      tools: [
        ...DevicePreview.defaultTools,
        // const CustomPlugin(),
      ],
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blood Bank App',
      theme: ThemeData(
        primarySwatch: Colors.red,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(Size(double.infinity, 53)),
            // backgroundColor: MaterialStatePropertyAll(Color(0xA8FF0E0E))))
            backgroundColor: MaterialStateColor.resolveWith(
              // ((states) => Color.fromARGB(168.3, 255, 14, 14)),
              ((states) => Color(0xa8ff0e0e)),
              // 255*0.6
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(Size(double.infinity, 53)),
            // border
            side: MaterialStateProperty.all(
              BorderSide(
                color: Color(0xffFF0E0E),
                width: 1,
              ),
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        // buttonTheme:
      ),
      // home: SplashScreen(),
      initialRoute: Routes.loginScreen,
      routes: {
        "/splash": (context) => SplashScreen(),
        Routes.onboardingScreen: (context) => OnboardingPage(),
        Routes.onboarding1Screen: (context) => OnboardingPage1(),
        Routes.onboarding2Screen: (context) => OnboardingPage2(),
        Routes.loginScreen: (context) => LoginScreen(),
        Routes.otpScreen: (context) => OtpScreen(),
        Routes.signUpScreen: (context) => SignUpScreen(),
        Routes.home: (context) => Home(),
        Routes.findDonors: (context) => FindDonors(),
        Routes.incomingRequests: (context) => IncomingRequests(),
        Routes.history: (context) => History(),
        Routes.allMessages: (context) => AllMessages(),
        Routes.donorsMap: (context) => DonorsMap(),
        Routes.messages: (context) => Messages(),
        Routes.footballScores: (context) => FootballScores(),
      },
    );
  }
}
