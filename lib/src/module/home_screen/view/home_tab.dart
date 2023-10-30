import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_height.dart';
import 'package:internship_project/src/module/home_screen/local_widget/home_tab/card_part.dart';
import 'package:internship_project/src/module/home_screen/local_widget/home_tab/cards_part_item.dart';
import 'package:internship_project/src/module/home_screen/local_widget/home_tab/daily_feature_item.dart';
import 'package:internship_project/src/module/home_screen/local_widget/home_tab/flash_deal_item.dart';
import 'package:internship_project/src/module/home_screen/local_widget/home_tab/header_part.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SliderScreen(),
            SpaceInHeight(height: 16.h),
            const CardPartItem(),
            SpaceInHeight(height: 19.h),
            const FlashDealItem(),
            SpaceInHeight(height: 17.h),
            const DailyFeatureItem()
          ],
        ),
      ),
    );
  }
}
