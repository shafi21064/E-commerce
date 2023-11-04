import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../home_package.dart';


class Brands extends StatelessWidget {
  final String imagePath, bradImage;
  const Brands({
    super.key,
    required this.imagePath,
    required this.bradImage
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 77.h,
          width: 83.w,
          decoration: BoxDecoration(
              color: const Color(0xffF7F7F7),
              borderRadius: BorderRadius.circular(5.r)
          ),
          child: Image.asset(imagePath),
        ),
        SpaceInHeight(height: 6.h),
        SizedBox(
          width: 62.w,
            height: 20.h,
            child: Image.asset(bradImage))
      ],
    );
  }
}