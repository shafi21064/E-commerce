import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';

class CartCustomButton extends StatelessWidget {
  final Color buttonColor;
  final String buttonName;
  const CartCustomButton({
    super.key,
    required this.buttonColor,
    required this.buttonName
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 36.h,
        width: 152.w,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5.r),
            border: Border.all(color: CustomColor.primaryColor)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: TextMedium(
                text: buttonName,
                fontSize: 14.sp,
                color: CustomColor.primaryColor,
              ),
            ),
            Align(
              child: Container(
                alignment: Alignment.center,
                height: 36.h,
                width: 45.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: Color(0xffFC6600).withOpacity(.3)
                ),
                child: TextMedium(
                   text: '1',
                  fontSize: 16.sp,
                  color: CustomColor.ratingBlue,
                ),
              ),
            )
          ],
        )
    );
  }
}
