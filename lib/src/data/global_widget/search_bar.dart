import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50.h,
        width: 338.w,
        child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: SizedBox(
                height: 18.4.h,
                width: 18.4.w,
                child: Image.asset(
                  'assets/icons/search.png',
                )),
            hintText: 'What would you like to buy?',
            hintStyle: TextStyle(
                color: CustomColor.searchBarTextColor,
                fontFamily: 'RobotoRegular',
                fontSize: 12.sp),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(23.r),
                borderSide: BorderSide(color: CustomColor.searchBarColor)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(23.r),
                borderSide: BorderSide(color: CustomColor.searchBarColor)),
            fillColor: CustomColor.searchBarColor,
            filled: true
          ),
        ));
  }
}
