import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_width.dart';
import '../../../data/global_widget/space_widget/space_in_height.dart';
import '../../../data/global_widget/text_widget/text_regular.dart';
import '../../../data/utils/custom_color.dart';

class IndicatorSign extends StatelessWidget {
  final String status;
  const IndicatorSign({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44.h,
      width: 57.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 24.h,
                width: 24.w,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: const Color(0xffD0D0D0))
                ),
              ),
            ],
          ),
          SpaceInHeight(height: 4.h),
          TextRegular(
              text: status,
              color: const Color(0xff414141),
              fontSize: 10.sp)
        ],
      ),
    );
  }
}
