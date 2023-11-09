import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../home_package.dart';


class FlashDealItem extends StatelessWidget {
  const FlashDealItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(16.w, 11.h, 16.w, 12.h),
        height: 146.h,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.r)
        ),
        child:  Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextMedium(
                    text: 'Flash Deals',
                    fontSize: 13.sp,
                  color: CustomColor.cardTextColor,
                ),
                SizedBox(
                  height: 17.h,
                  width: 66.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 14.h,
                        width: 14.w,
                        child: Image.asset('assets/icons/flash.png'),
                      ),
                      CountdownWidget(duration: Duration(hours: 10)),
                    ],
                  ),
                )
              ],
            ),
            SpaceInHeight(height: 7.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlashDeals(
                  imagePath: 'assets/images/chair.jpg',
                  priceTagColor: CustomColor.primaryColor,
                  productPrice: '550.00 SAR',
                  fontSize: 11.sp,
                ),
                FlashDeals(
                  imagePath: 'assets/images/gaming_pc.png',
                  priceTagColor: Color(0xff68C037),
                  productPrice: '230.00 SAR',
                  fontSize: 11.sp,
                ),
                FlashDeals(
                  imagePath: 'assets/images/gaming_pc.png',
                  priceTagColor: Color(0xff094D82),
                  productPrice: '1230.00 SAR',
                  fontSize: 11.sp,
                ),
                FlashDeals(
                  imagePath: 'assets/images/headphone_2.jpg',
                  priceTagColor: Color(0xff2B2B2B),
                  productPrice: '560.00 SAR',
                  fontSize: 11.sp,
                )
              ],
            ),
          ],
        )
    );
  }
}
