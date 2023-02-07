import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Donation History",
        ),
      ),
      body: Column(
        children: [
          //TODO: switch buttons group at the top
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
                                Column(
                                  children: [
                                    Container(
                                      child: Text("Accept"),
                                    ),
                                    Container(
                                      child: Text("Decline"),
                                    )
                                  ],
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
