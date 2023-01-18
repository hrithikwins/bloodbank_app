import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Container(
            color: Colors.grey.shade100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  child: Text(
                    "Login with your mobile",
                  ),
                ),
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  // fit: StackFit.loose,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        left: 6,
                        top: 6,
                        right: 22,
                        bottom: 6,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.8,
                          color: Colors.blueGrey,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            10,
                          ),
                        ),
                      ),
                      child: Text(
                        "94999999",
                      ),
                    ),
                    Positioned(
                      right: -10,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 0.8,
                            color: Colors.blueGrey,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              8,
                            ),
                          ),
                        ),
                        child: Icon(
                          Icons.check,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
