import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../constants/routes.dart';

class AllMessages extends StatefulWidget {
  const AllMessages({super.key});

  @override
  State<AllMessages> createState() => _AllMessagesState();
}

@override
initState() {
  // super.initState();
  _getMessages();
}

Stream _getMessages() async* {
  final db = FirebaseFirestore.instance;
  final docRef = db.collection("messages").doc("javaoncloud14@gmail.com");
  docRef.snapshots().listen(
        (event) => print("current data: ${event.data()}"),
        onError: (error) => print("Listen failed: $error"),
      );
}

class _AllMessagesState extends State<AllMessages> {
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
                child: StreamBuilder(
                    stream: _getMessages(),
                    builder: (context, snapshot) {
                      return Column(
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
                      );
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
