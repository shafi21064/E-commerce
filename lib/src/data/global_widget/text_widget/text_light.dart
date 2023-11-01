import 'package:flutter/material.dart';


class TextLight extends StatelessWidget {
  final String text;
  final Color color;
  final double? fontSize, height;
  const TextLight({
    super.key,
    required this.text,
    required this.color,
    required this.fontSize,
    this.height
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontFamily: 'RobotoLight',
        fontSize: fontSize,
        height: height
      ),
    );
  }
}
