import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../account_package.dart';

class StatusIndicator extends StatelessWidget {
  const StatusIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(18.w, 19.h, 18.w, 0),
      height: 73.h,
      width: 415.w,
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        SizedBox(
        height: 44.h,
        width: 56.w,
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
                      color: CustomColor.primaryColor,
                      shape: BoxShape.circle,
                      border: Border.all(color: const Color(0xffD0D0D0))
                  ),
                  child: const Icon(Icons.done, color: Colors.white, size: 11,),
                ),
              ],
            ),
            SpaceInHeight(height: 4.h),
            TextRegular(
                text: 'Pending',
                color: const Color(0xff414141),
                fontSize: 10.sp)
          ],
        ),
      ),
          Container(
            margin: EdgeInsets.only(top: 12.h),
            width: 25.w,
            height: 1.h,
            color: CustomColor.primaryColor,
          ),
      SizedBox(
        height: 44.h,
        width: 56.w,
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
                    color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: const Color(0xffD0D0D0))
                  ),
                  child: const Icon(Icons.circle, size: 12, color: CustomColor.primaryColor,)
                ),
              ],
            ),
            SpaceInHeight(height: 4.h),
            TextRegular(
                text: 'Confirmed',
                color: const Color(0xff414141),
                fontSize: 10.sp)
          ],
        ),
      ),
          Container(
            margin: EdgeInsets.only(top: 12.h),
            width: 22.w,
            height: 1.h,
            color: CustomColor.primaryColor,
          ),
          const IndicatorSign(
            status: 'Processing',
          ),
          Container(
            margin: EdgeInsets.only(top: 12.h),
            width: 25.w,
            height: 1.h,
            color: CustomColor.primaryColor,
          ),
          const IndicatorSign(
            status: 'Shipped',
          ),
          Container(
            margin: EdgeInsets.only(top: 12.h),
            width: 22.w,
            height: 1.h,
            color: CustomColor.primaryColor,
          ),
          const IndicatorSign(
            status: 'Delivered',
          )
        ],
      ),
    );
  }
}
