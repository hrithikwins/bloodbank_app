import 'package:bloodbank_app/constants/colors.dart';
import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

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
              child: Column(
                children: ["hi,", "hello", "whatspu", "send blood", "Please"]
                    .map((e) => Container(
                          padding: EdgeInsets.only(
                            top: 200,
                          ),
                          child: Text(e),
                        ))
                    .toList(),
              ),
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
