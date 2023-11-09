import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../home_package.dart';

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
                  imagePath: 'assets/images/chair.jpg',
                  bradImage: 'assets/icons/diseal.png',
                ),
                Brands(
                  imagePath: 'assets/images/gaming_mouse.jpg',
                  bradImage: 'assets/icons/guine.png',
                ),
                Brands(
                  imagePath: 'assets/images/gaming_pc.png',
                  bradImage: 'assets/icons/fed-x.png',
                ),
                Brands(
                  imagePath: 'assets/images/headphone_2.jpg',
                  bradImage: 'assets/icons/micromax.png',
                )
              ],
            ),
          ],
        )
    );
  }
}