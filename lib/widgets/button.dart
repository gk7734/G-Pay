import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class Button extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;

  const Button(
      {super.key,
      required this.text,
      required this.bgColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(Platform.isAndroid ? 40 : 45),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: Platform.isAndroid ? 16 : 20,
          horizontal: Platform.isAndroid ? 40 : 50,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: Platform.isAndroid ? 18 : 20,
          ),
        ),
      ),
    );
  }
}
