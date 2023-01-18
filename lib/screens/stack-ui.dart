import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // color: Colors.green.shade100,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Login with your mobile",
                ),
              ),
              Stack(
                alignment: Alignment.centerRight,
                clipBehavior: Clip.none,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(
                      5,
                      5,
                      20,
                      5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          8,
                        ),
                      ),
                      border: Border.all(
                        width: 0.8,
                        color: Colors.grey,
                      ),
                    ),
                    child: Text(
                      "9888846564",
                    ),
                  ),
                  Positioned(
                    right: -18,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            20,
                          ),
                        ),
                        color: Colors.white,
                        border: Border.all(
                          width: 0.8,
                          color: Colors.grey,
                        ),
                      ),
                      child: Icon(
                        Icons.check,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
