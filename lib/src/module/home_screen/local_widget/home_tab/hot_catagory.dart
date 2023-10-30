import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_height.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';
import 'package:internship_project/src/module/home_screen/local_widget/home_tab/flash_deals.dart';

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
                  imagePath: 'assets/images/Gaming-Chair.png',
                  priceTagColor: CustomColor.primaryColor,
                  productPrice: 'G11 Chair',
                  fontSize: 8.sp,
                ),
                FlashDeals(
                  imagePath: 'assets/images/mouse.png',
                  priceTagColor: Color(0xff68C037),
                  productPrice: 'G11 Mouse',
                  fontSize: 8.sp,
                ),
                FlashDeals(
                  imagePath: 'assets/images/gaming-pc.png',
                  priceTagColor: Color(0xff094D82),
                  productPrice: 'Gaming PC',
                  fontSize: 8.sp,
                ),
                FlashDeals(
                  imagePath: 'assets/images/headphones.png',
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