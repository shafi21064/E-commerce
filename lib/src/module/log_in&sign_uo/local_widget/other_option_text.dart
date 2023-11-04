import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_regular.dart';

class OthersOptionText extends StatelessWidget {
  const OthersOptionText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 119.w,
          height: 0.h,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xff9A9A9A))
          ),
        ),
        TextRegular(text: 'OR',
            color: Color(0xff9A9A9A),
            fontSize: 15.sp),
        Container(
          width: 119.w,
          height: 0.h,
          decoration: BoxDecoration(
              border: Border.all(color: Color(0xff9A9A9A))
          ),
        ),
      ],
    );
  }
}