import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';
import 'package:internship_project/src/module/home_screen/local_widget/header_part.dart';
import 'package:internship_project/src/module/home_screen/local_widget/tab_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
        height: size.height,
        width: size.width,
        color: CustomColor.backgroundColor,
        child:const SafeArea(
          child: Column(
            children: [
              HeaderPart(),
              CustomTabBar()
            ],
          ),
        ),
      ),
    );
  }
}
