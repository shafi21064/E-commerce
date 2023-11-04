import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/fill_custom_button.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_width.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 28.w),
      alignment: Alignment.center,
      height: 67.h,
      width: 416.w,
      color: Colors.white,
      child: Row(
        children: [
          Container(
            height: 16.h,
            width: 16.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: CustomColor.primaryColor
            ),
            child: const Icon(Icons.done_sharp, size: 10, color: Colors.white,),
          ),
          SpaceInWidth(width: 6.w),
          TextMedium(
              text: 'All',
              fontSize: 14.sp,
            color: const Color(0xff5A5A5A),
          ),
          SpaceInWidth(width: 29.w),
          RichText(text: TextSpan(
            text: 'Total: ',
            style: TextStyle(
              fontSize: 14.sp,
              color: const Color(0xff5A5A5A),
              fontFamily: 'RobotoMedium'
            ),
            children:[
              TextSpan(
                text: 'SAR 2000.00',
                style: TextStyle(
                  color: CustomColor.primaryColor,
                  fontSize: 14.sp,
                  fontFamily: 'RobotoMedium'
                )
              )
            ]
          )),
          SpaceInWidth(width: 37.w),
          Container(
            alignment: Alignment.center,
            height: 37.h,
            width: 132.w,
            decoration: BoxDecoration(
              color: CustomColor.primaryColor,
              borderRadius: BorderRadius.circular(5.r)
            ),
            child: TextMedium(
              text: 'Check Out',
              fontSize: 14.sp,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
