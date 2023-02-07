import 'package:flutter/material.dart';

class IncomingRequests extends StatelessWidget {
  const IncomingRequests({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Container(child: Text("Incoming Requests"))),
      body: ListView(
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
    );
  }
}
