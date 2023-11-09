import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../account_package.dart';

class ThankYuMessage extends StatelessWidget {
  const ThankYuMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      height: 88.h,
      width: 415.w,
      color: Colors.white,
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextMedium(
                  text: '09 NOV',
                  color: const Color(0xff414141),
                  fontSize: 16.sp),
              TextRegular(
                  text: '5.00 pm',
                  color: const Color(0xff414141),
                  fontSize: 12.sp)
            ],
          ),
          SpaceInWidth(width: 33.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 48.h,
                width: 253.w,
                child: TextRegular(
                  text: 'Thank you for placing order at Limarket. We will Start processing your order after payment is Complete- Limarket',
                  fontSize: 12.sp,
                  color: Color(0xff414141),
                ),
              ),
               TextMedium(
                   text: 'Pending',
                   fontSize: 16.sp,
                 color: Color(0xff414141),
               )
            ],
          )
        ],
      ),
    );
  }
}
