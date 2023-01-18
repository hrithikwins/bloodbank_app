import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(
          top: 10,
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                color: Colors.teal.shade400,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    20,
                  ),
                ),
                border: Border.all(
                  width: 1,
                  color: Colors.yellow,
                ),
              ),
              height: 80,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text("28/01/2023 "),
                      ),
                      Container(
                        child: Text("Monday"),
                      ),
                    ],
                  ),
                  Container(
                    child: Text("Fetching milk "),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                color: Colors.teal.shade400,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    20,
                  ),
                ),
                border: Border.all(
                  width: 1,
                  color: Colors.yellow,
                ),
              ),
              height: 80,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text("28/01/2023 "),
                      ),
                      Container(
                        child: Text("Monday"),
                      ),
                    ],
                  ),
                  Container(
                    child: Text("Fetching milk "),
                  )
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              color: Colors.teal.shade400,
              height: 80,
              width: double.infinity,
            ),
          ],
        ),
      )),
    );
  }
}
