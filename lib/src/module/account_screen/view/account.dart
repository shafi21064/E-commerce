import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/module/log_in&sign_uo/package.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import '../account_package.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const PicturePart(),
              SpaceInHeight(height: 20.h),
              const DetailsPart(),
              SpaceInHeight(height: 23.h),
              DetailsCard(
                onTap: ()=> pushNewScreen(
                  context,
                  screen: const LogInScreen(),
                  withNavBar: false, // OPTIONAL VALUE. True by default.
                  pageTransitionAnimation: PageTransitionAnimation.cupertino,
                ),
                  imagePath: 'assets/icons/exit.png',
                  cardText: 'Logout',
                  textColor: const Color(0xff404040),
                cardColor: CustomColor.backgroundColor,
              )
            ],
          ),
        ),
      )
    );
  }
}
