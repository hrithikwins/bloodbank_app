import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyTitleWidgets {
  static Widget titleWidget(
    String title, {
    int fontSize = 14,
    Color color = Colors.black,
  }) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Text(
          title,
          style: TextStyle(
            fontSize: fontSize.toDouble(),
            color: color,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
