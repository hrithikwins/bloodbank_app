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
        ],
      ),
    );
  }
}
