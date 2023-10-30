import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextLightItalic extends StatelessWidget {
  final String text;
  final Color color;
  final double? fontSize, height;
  const TextLightItalic({
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
        fontFamily: 'RobotoLightItalic',
        fontSize: fontSize,
        height: height
      ),
    );
  }
}
