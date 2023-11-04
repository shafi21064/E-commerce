import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../account_package.dart';

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
