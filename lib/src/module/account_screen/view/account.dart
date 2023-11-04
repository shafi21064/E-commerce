import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_height.dart';
import 'package:internship_project/src/module/account_screen/local_widget/details%20_part.dart';
import 'package:internship_project/src/module/account_screen/local_widget/details_card.dart';
import 'package:internship_project/src/module/account_screen/local_widget/pic_part.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const PicturePart(),
              SpaceInHeight(height: 20.h),
              const DetailsPart(),
              SpaceInHeight(height: 23.h),
              const DetailsCard(
                  imagePath: 'assets/icons/exit.png',
                  cardText: 'Logout',
                  textColor: Color(0xff404040)
              )
            ],
          ),
        ),
      )
    );
  }
}
