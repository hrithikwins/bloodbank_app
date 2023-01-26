import 'package:flutter/material.dart';

import 'constants/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blood Bank App',

      theme: ThemeData(
          // color shades
          primarySwatch: Colors.red,

          // Global Elevated Button Theme:
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Colors.deepPurple,
              ),
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 20),
              ),
            ),
          ),

          // Global text Button Theme:
          textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
              // textStyle: MaterialStateProperty.all(
              //   TextStyle(fontSize: 24),
              // ),
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 20),
              ),
            ),
          )),

      // home: SplashScreen(),
      routes: routeMap,
      initialRoute: '/',
    );
  }
}
