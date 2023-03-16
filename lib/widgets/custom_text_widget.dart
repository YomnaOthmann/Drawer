import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    required this.fontSize,
    this.fontFamily,
    required this.color,
  });

  final String? fontFamily;
  final String text;
  final double fontSize;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: fontFamily,
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
