import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';

class CustomButton extends StatelessWidget {
  final Color buttonColor, nameColor;
  final String buttonName;
  final dynamic onTap;
  const CustomButton({
    super.key,
    required this.buttonColor,
    required this.buttonName,
    required this.nameColor,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          height: 36.h,
          width: 152.w,
          decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(5.r),
              //border: Border.all(color: const Color(0xff959595))
          ),
          child: Center(
            child: TextMedium(
              text: buttonName,
              fontSize: 14.sp,
              color: nameColor,
            ),
          )
      ),
    );
  }
}
