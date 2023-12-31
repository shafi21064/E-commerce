import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_height.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_bold.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_regular.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';
import 'package:internship_project/src/module/log_in&sign_uo/view/log_in.dart';
import 'package:internship_project/src/module/nav_bar/nav_bar.dart';

class SkipScreenWidget extends StatelessWidget {
  final String titleImage, titleText, bottomIcon;
  const SkipScreenWidget({
    super.key,
    required this.titleImage,
    required this.titleText,
    required this.bottomIcon
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 486.h,
          width: MediaQuery.sizeOf(context).width,
          child: Image.asset(titleImage, fit: BoxFit.cover,),
        ),
        const SpaceInHeight(height: 105),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 50.w),
          height: 110.h,
          width: 312.w,
          child: Column(
            children: [
              TextBold(
                text: titleText,
                color: CustomColor.primaryColor,
                fontSize: 20.sp,
              ),
              SpaceInHeight(height: 16.h),
              TextRegular(
                  text: "Zak can be customized and used for any niche. The vast possibilities of this template makes it multi purpose.",
                  color: CustomColor.fadedText,
                  fontSize: 14.sp,
                height: 1.5.h,
              ),
            ],
          ),
        ),
        SpaceInHeight(height: 66.h),
        SizedBox(
          width: 69.w,
          height: 20.h,
          child: Image.asset(bottomIcon),
        ),
        SpaceInHeight(height: 48.h),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            margin: EdgeInsets.only(right: 50.w),
            child: InkWell(
              onTap: (){
                Navigator.pushAndRemoveUntil(
                    context, MaterialPageRoute(builder: (context)=> const LogInScreen()),
                        (route) => false);
              },
              child: TextMedium(
                  text: 'SKIP',
                  color: CustomColor.kingBlackText,
                  fontSize: 17.sp
              ),
            ),
          ),
        ),
        SpaceInHeight(height: 22.h),
        Container(
          height: 3.h,
          width: 160.w,
          color: CustomColor.brown,
        )
      ],
    );
  }
}
