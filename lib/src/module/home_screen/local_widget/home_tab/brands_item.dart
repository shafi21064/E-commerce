import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_height.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_regular.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';
import 'package:internship_project/src/module/home_screen/local_widget/home_tab/brands.dart';
import 'package:internship_project/src/module/home_screen/local_widget/home_tab/flash_deals.dart';

class BrandsItem extends StatelessWidget {
  const BrandsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(16.w, 11.h, 16.w, 6.h),
        height: 146.h,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
            color: const Color(0xff24CAAA),
            borderRadius: BorderRadius.circular(8.r)
        ),
        child:  Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextMedium(
                  text: 'Brands',
                  fontSize: 13.sp,
                  color: CustomColor.cardTextColor,
                ),
                TextRegular(
                    text: 'View More',
                    color: const Color(0xff8D8D8D),
                    fontSize: 11.sp
                )
              ],
            ),
            SpaceInHeight(height: 7.h),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Brands(
                  imagePath: 'assets/images/Gaming-Chair.png',
                  bradImage: 'assets/icons/diseal.png',
                ),
                Brands(
                  imagePath: 'assets/images/mouse.png',
                  bradImage: 'assets/icons/guine.png',
                ),
                Brands(
                  imagePath: 'assets/images/gaming-pc.png',
                  bradImage: 'assets/icons/fed-x.png',
                ),
                Brands(
                  imagePath: 'assets/images/headphones.png',
                  bradImage: 'assets/icons/micromax.png',
                )
              ],
            ),
          ],
        )
    );
  }
}