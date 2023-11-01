import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_height.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';
import 'package:internship_project/src/module/home_screen/local_widget/home_tab/best_sales_product.dart';
import 'package:internship_project/src/module/home_screen/local_widget/home_tab/brands_item.dart';
import 'package:internship_project/src/module/home_screen/local_widget/home_tab/cards_part_item.dart';
import 'package:internship_project/src/module/home_screen/local_widget/home_tab/daily_feature_item.dart';
import 'package:internship_project/src/module/home_screen/local_widget/home_tab/details/voucher_part.dart';
import 'package:internship_project/src/module/home_screen/local_widget/home_tab/flash_deal_item.dart';
import 'package:internship_project/src/module/home_screen/local_widget/home_tab/header_part.dart';
import 'package:internship_project/src/module/home_screen/local_widget/home_tab/hot_catagory.dart';

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
        ],
      ),
    );
  }
}
