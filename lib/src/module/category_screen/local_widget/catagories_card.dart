import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../checkout/checkout_pakage.dart';


class CategoriesCard extends StatelessWidget {
  final String categoryImage, categoryName;
  final dynamic onTap;
  const CategoriesCard({
    super.key,
    required this.categoryImage,
    required this.categoryName,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 2.h),
        height: 130.h,
        width: 125.h,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.5),
              blurRadius: 2,
              offset: const Offset(0,2)
            )
          ]
        ),
        child: Column(
          children: [
            Image.asset(categoryImage, height: 80.h, width: 80.w,),
            SpaceInHeight(height: 8.h),
            SizedBox(
              width: 80.w,
              child: TextRegular(
                  text: categoryName,
                  color: const Color(0xff797979),
                  fontSize: 14.sp
              ),
            )
          ],
        ),
      ),
    );
  }
}
