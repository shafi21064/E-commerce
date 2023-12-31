import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../home_package.dart';

class HotCategory extends StatelessWidget {
  const HotCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(16.w, 11.h, 16.w, 12.h),
        height: 146.h,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
            color: Color(0xffFED3B9),
            borderRadius: BorderRadius.circular(8.r)
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextMedium(
              text: 'Hot Category',
              fontSize: 13.sp,
              color: CustomColor.cardTextColor,
            ),
            SpaceInHeight(height: 7.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlashDeals(
                  imagePath: 'assets/images/chair.jpg',
                  priceTagColor: CustomColor.primaryColor,
                  productPrice: 'G11 Chair',
                  fontSize: 8.sp,
                ),
                FlashDeals(
                  imagePath: 'assets/images/gaming_mouse.jpg',
                  priceTagColor: Color(0xff68C037),
                  productPrice: 'G11 Mouse',
                  fontSize: 8.sp,
                ),
                FlashDeals(
                  imagePath: 'assets/images/gaming_pc.png',
                  priceTagColor: Color(0xff094D82),
                  productPrice: 'Gaming PC',
                  fontSize: 8.sp,
                ),
                FlashDeals(
                  imagePath: 'assets/images/headphone_2.jpg',
                  priceTagColor: Color(0xff2B2B2B),
                  productPrice: 'G11 Headphone',
                  fontSize: 8.sp,
                )
              ],
            ),
          ],
        )
    );
  }
}