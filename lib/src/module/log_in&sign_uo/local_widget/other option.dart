import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtherOption extends StatelessWidget {
  const OtherOption({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38.h,
      width: 228.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 35.95.h,
            width: 35.95.w,
            child: Image.asset('assets/icons/facebook.png'),
          ),
          SizedBox(
            height: 35.95.h,
            width: 35.95.w,
            child: Image.asset('assets/icons/gmail.png'),
          ),
          SizedBox(
            height: 35.95.h,
            width: 35.95.w,
            child: Image.asset('assets/icons/instagram.png'),
          ),
          SizedBox(
            height: 35.95.h,
            width: 35.95.w,
            child: Image.asset('assets/icons/linkedin.png'),
          )
        ],
      ),
    );
  }
}
