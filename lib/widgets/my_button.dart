import "package:flutter/material.dart";

import '../constants/colors.dart';

class MyButtons {
  static InkWell borderedButton(
    String title, {
    double height = 30,
    double width = double.infinity,
    bool isTransparent = false,
    Color borderColor = Colors.black,
    bool isRounded = false,
    bool isBold = false,
    required VoidCallback onPressed,
  }) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: isTransparent ? Colors.transparent : MyColors.redPrimary,
          border: Border.all(
            color: borderColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(isRounded ? 7 : 0),
        ),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: isTransparent ? MyColors.redPrimary : Colors.white,
              fontWeight: isBold ? FontWeight.w800 : FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
