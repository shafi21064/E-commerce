import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/global_widget/text_widget/text_regular.dart';

class ContactNumber extends StatelessWidget {
  const ContactNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextRegular(text: '+237 758 754 637',
                  color: const Color(0xff525252),
                  fontSize: 16.sp),
            ],
          ),
          Container(
            height: 31.h,
            width: 31.w,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xffDBDBDB)),
                color: const Color(0xffEAEAEA)
            ),
            child: const Icon(Icons.edit, size: 15),
          )
        ],
      ),
    );;
  }
}
