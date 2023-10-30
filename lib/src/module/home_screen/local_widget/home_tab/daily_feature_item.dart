import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_height.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_light_italic.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';
import 'package:internship_project/src/module/home_screen/local_widget/home_tab/flash_deals.dart';
import 'package:internship_project/src/module/home_screen/local_widget/home_tab/timer.dart';

class DailyFeatureItem extends StatelessWidget {
  const DailyFeatureItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(16.w, 11.h, 16.w, 12.h),
        height: 146.h,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
            color: Color(0xffE4E4FC),
            borderRadius: BorderRadius.circular(8.r)
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextMedium(
              text: 'Daily Features',
              fontSize: 13.sp,
              color: CustomColor.cardTextColor,
            ),
            SpaceInHeight(height: 7.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 97.h,
                  width: 83.w,
                  decoration: BoxDecoration(
                    color: CustomColor.primaryColor,
                    borderRadius: BorderRadius.circular(5.r)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextLightItalic(
                          text: 'Hot Sales',
                          color: Colors.white,
                          fontSize: 12.sp
                      ),
                      SpaceInHeight(height: 3.h),
                      TextMedium(
                          text: '50% OFF',
                          fontSize: 13.sp,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                const FlashDeals(
                  imagePath: 'assets/images/mouse.png',
                  priceTagColor: Color(0xff68C037),
                  productPrice: '230.00',
                ),
                const FlashDeals(
                  imagePath: 'assets/images/gaming-pc.png',
                  priceTagColor: Color(0xff094D82),
                  productPrice: '1230.00',
                ),
                const FlashDeals(
                  imagePath: 'assets/images/headphones.png',
                  priceTagColor: Color(0xff2B2B2B),
                  productPrice: '560.00',
                )
              ],
            ),
          ],
        )
    );
  }
}