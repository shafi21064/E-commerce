import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_width.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';

class CustomAppBar extends StatelessWidget {
  final String appBarTitle;
  final dynamic onTap;
  const CustomAppBar({
    super.key,
    required this.appBarTitle,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Row(
        children: [
          GestureDetector(
            onTap: onTap,
              child: Image.asset('assets/icons/back.png')),
          SpaceInWidth(width: 16.w),
          TextMedium(
            text: appBarTitle,
            fontSize: 16.sp,
            color: const Color(0xff414141),
          )
        ],
      ),
    );
  }
}
