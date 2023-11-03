import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_height.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_width.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';

class HeaderPart extends StatelessWidget {

  final String productSpecialPrice, productPrice, productSubtitle;

  const HeaderPart({
    super.key,
    required this.productSpecialPrice,
    required this.productPrice,
    required this.productSubtitle,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      height: 156.h,
      //color: Colors.red,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextMedium(
                  text: '${productSpecialPrice.toString()} SAR',
                  fontSize: 21.sp,
                color: CustomColor.primaryColor,
              ),
              const Icon(Icons.share, color: Colors.black,)
            ],
          ),
          Row(
            children: [
              Text(
                '${productPrice.toString()}+ SAR',
                style: TextStyle(
                  fontFamily: 'RobotoMedium',
                  fontSize: 16.sp,
                  color: const Color(0xffCBCBCB),
                  decoration: TextDecoration.lineThrough
                ),
              ),
              SpaceInWidth(width: 18.w),
              Text(
                '-46%',
                style: TextStyle(
                    fontFamily: 'RobotoMedium',
                    fontSize: 16.sp,
                    color: const Color(0xff868686),
                ),
              ),
            ],
          ),
          SpaceInHeight(height: 13.h),
          TextMedium(
              text: productSubtitle,
              fontSize: 16.sp,
            color: const Color(0xff333333),
          ),
          SpaceInHeight(height: 12.h),
          Row(
            children: [
              Image.asset('assets/icons/review.png'),
              SpaceInWidth(width: 8.w),
              TextMedium(
                  text: '4.6',
                  fontSize: 16.sp,
                color: const Color(0xff868686),
              )
            ],
          )
        ],
      ),
    );
  }
}
