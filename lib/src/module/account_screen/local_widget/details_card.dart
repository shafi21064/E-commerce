import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../account_package.dart';

class DetailsCard extends StatelessWidget {
  final String cardText, imagePath;
  final Color textColor;

  const DetailsCard({
    super.key,
    required this.imagePath,
    required this.cardText,
    required this.textColor
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      width: 355.5.w,
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            height: 50.h,
            width: 50.w,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Color(0xff707070).withOpacity(.5),
                  blurRadius: 2,
                  offset: Offset(0, 1)
                )
              ]
            ),
            child: Image.asset(imagePath),
          ),
          SpaceInWidth(width: 23.w),
          Container(
            alignment: Alignment.centerLeft,
            height: 50.h,
            width: 280.w,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(.3),
                  //blurRadius: 2,
                  offset: Offset(0,2)
                )
              ]
            ),
            child: TextRegular(
                text: cardText,
                color: textColor,
                fontSize: 18.sp
            ),
          )
        ],
      ),
    );
  }
}
