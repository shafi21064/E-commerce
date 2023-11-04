import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';

class CustomBigButton extends StatelessWidget {
  final dynamic onTap, buttonName;
  const CustomBigButton({Key? key, required this.onTap, required this.buttonName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60.h,
        width: 331.w,
        decoration: BoxDecoration(
            color: CustomColor.primaryColor,
        ),
        child: Center(
          child: TextMedium(
              text: buttonName,
              fontSize: 17.sp,
            color: Colors.white,
          )
        ),
      ),
    );
  }
}