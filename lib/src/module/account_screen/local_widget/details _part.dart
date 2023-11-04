import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_height.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';
import 'package:internship_project/src/module/account_screen/local_widget/details_card.dart';

class DetailsPart extends StatelessWidget {
  const DetailsPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(35.w, 18.h, 25.5.w, 33.h),
      height: 326.h,
      width: 416.w,
      color: Colors.white,
      child: Column(
        children: [
          DetailsCard(
            imagePath: 'assets/icons/home_icon.png',
              cardText: 'Order Details',
              textColor: CustomColor.primaryColor
          ),
          SpaceInHeight(height: 25.h),
          const DetailsCard(
            imagePath: 'assets/icons/profile.png',
              cardText: 'Edit Profile',
              textColor: Color(0xff404040)
          ),
          SpaceInHeight(height: 25.h),
          const DetailsCard(
            imagePath: 'assets/icons/address.png',
              cardText: 'Address',
              textColor: Color(0xff404040)
          ),
          SpaceInHeight(height: 25.h),
          const DetailsCard(
            imagePath: 'assets/icons/translate.png',
              cardText: 'Change Language',
              textColor:  Color(0xff404040)
          )
        ],
      ),
    );
  }
}
