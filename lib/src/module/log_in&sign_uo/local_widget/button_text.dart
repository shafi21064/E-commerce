import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_regular.dart';

class ButtonText extends StatelessWidget {
  final String buttonTxt;
  final Color color;
  final double txtSize;
  final dynamic onTap;

  const ButtonText(
      {Key? key,
        required this.onTap,
        required this.buttonTxt,
        required this.color,
        required this.txtSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: TextRegular(
          text: buttonTxt,
          color: color,
          fontSize: txtSize),
    );
  }
}