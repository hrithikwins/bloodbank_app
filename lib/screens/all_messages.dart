import 'package:flutter/material.dart';

import '../constants/routes.dart';

class AllMessages extends StatelessWidget {
  const AllMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "All Messages",
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8),
                child: Column(
                  children: ["Donor #3982", "Donor #893"]
                      .map(
                        (e) => Column(
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(e),
                                      ),
                                      Container(
                                        child: Text(
                                          "Hello, I am available",
                                        ),
                                      )
                                    ],
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.keyboard_arrow_right_sharp,
                                    ),
                                    onPressed: () {
                                      Navigator.pushNamed(
                                        context,
                                        Routes.messages,
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
