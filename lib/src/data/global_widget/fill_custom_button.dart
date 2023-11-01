import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';

class FilledCustomButton extends StatelessWidget {
  final Color buttonColor, nameColor;
  final String buttonName;
  const FilledCustomButton({
    super.key,
    required this.buttonColor,
    required this.buttonName,
    required this.nameColor
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36.h,
      width: 152.w,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(5.r),
        border: Border.all(color: const Color(0xffFC6600))
      ),
      child: Center(
        child: TextMedium(
          text: buttonName,
          fontSize: 14.sp,
          color: nameColor,
        ),
      )
    );
  }
}
