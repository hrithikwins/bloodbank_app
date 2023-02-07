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
              child: Column(
                children: ["Requester #3982", "Requester #893"]
                    .map(
                      (e) => Column(
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      child: Text(e),
                                    ),
                                    Container(
                                      child: Text("View Details"),
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
        ],
      ),
    );
  }
}
