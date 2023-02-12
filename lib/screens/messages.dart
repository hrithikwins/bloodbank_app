import 'package:bloodbank_app/constants/colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  initState() {
    // super.initState();
    _getMessages();
  }

  List<dynamic> myMessages = [];

  Stream<List<dynamic>> _getMessages() async* {
    List<dynamic> messages = [];
    final db = FirebaseFirestore.instance;
    final docRef = db.collection("messages").doc("javaoncloud14@gmail.com");
    docRef.snapshots().listen(
          (event) => {
            messages.add(event.data()!["hrithik"]),
            print("current data: ${event.data()!["hrithik"]}"),
            setState(() {
              myMessages = messages;
            })
          },
          onError: (error) => print("Listen failed: $error"),
        );
    print("outside the listen");
    yield messages;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(18),
            height: 55,
            width: 360,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: MyColors.redPrimary,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Donor #1892893",
                    style: TextStyle(
                      fontSize: 18,
                      color: MyColors.redPrimary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: const IconButton(
                    onPressed: null,
                    icon: Icon(Icons.phone),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: StreamBuilder<List<dynamic>>(
                  stream: _getMessages(),
                  builder: (context, snapshot) {
                    return Column(
                      children: myMessages
                          .map((e) => Container(
                                padding: EdgeInsets.only(
                                  top: 200,
                                ),
                                child: Text(e.toString()),
                              ))
                          .toList(),
                    );
                  }),
            ),
          ),
          Container(
            margin: EdgeInsets.all(18),
            height: 55,
            width: 360,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: MyColors.redPrimary,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 250,
                  child: TextField(
                    style: TextStyle(
                      fontSize: 18,
                      color: MyColors.redPrimary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: const IconButton(
                    onPressed: null,
                    icon: Icon(Icons.send),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
