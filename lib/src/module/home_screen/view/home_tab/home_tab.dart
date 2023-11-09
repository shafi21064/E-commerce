import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../home_package.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14.w),
      child: ListView(
        children: [
          const SliderScreen(),
          SpaceInHeight(height: 16.h),
          const CardPartItem(),
          SpaceInHeight(height: 19.h),
          const FlashDealItem(),
          SpaceInHeight(height: 17.h),
          const DailyFeatureItem(),
          SpaceInHeight(height: 13.h),
          const HotCategory(),
          SpaceInHeight(height: 17.h),
          const BrandsItem(),
          SpaceInHeight(height: 21.h),
          TextMedium(
              text: 'Best Sales Product',
              fontSize: 13.sp,
            color: CustomColor.cardTextColor,
          ),
          SpaceInHeight(height: 14.h),
          const BestSalesProduct(),
          SpaceInHeight(height: 14.h),
        ],
      ),
    );
  }
}
