import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget(this.title,
      {this.fontSize = 14, this.color = Colors.black, super.key});
  final String title;
  final int fontSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
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
