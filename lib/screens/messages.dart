import 'package:bloodbank_app/constants/colors.dart';
import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Messages"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 20,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: MyColors.redPrimary,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Doner #28392",
                    style: TextStyle(
                      fontSize: 14,
                      color: MyColors.redPrimary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.phone,
                    color: MyColors.redPrimary,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: ["hi", "Hello", "b+", "some help"]
                    .map((e) => Padding(
                          padding: const EdgeInsets.only(top: 98.0),
                          child: Text(e),
                        ))
                    .toList(),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 20,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: MyColors.redPrimary,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: TextField(),
                    )),
                IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.send,
                    color: MyColors.redPrimary,
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