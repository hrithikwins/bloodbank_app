import 'package:bloodbank_app/utils/firestore_utils.dart';
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
  _getUsers();
}

Future<List<String>> _getUsers() async {
  final db = await FireStoreMethods.getDataFromFirestore(
    "messages",
  );
  print("messages are ");
  List<String> allUsers = [];
  db.forEach((data) => {
        allUsers.add(data.keys.toList()[0]),
        print(data.keys),
      });
  print(allUsers);
  return allUsers;
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
                child: FutureBuilder(
                  future: _getUsers(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (snapshot.connectionState ==
                              ConnectionState.active ||
                          snapshot.connectionState == ConnectionState.done) {
                        // data.add(snapshot.data);
                        return Column(
                          children: snapshot.data!
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
                      }
                    } else {
                      return Container(
                        child: Center(
                          child: Text("No Data"),
                        ),
                      );
                    }
                    return Container();
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
