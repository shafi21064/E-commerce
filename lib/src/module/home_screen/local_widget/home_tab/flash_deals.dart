import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';

class FlashDeals extends StatelessWidget {
  final String imagePath, productPrice;
  final Color priceTagColor;
  const FlashDeals({
    super.key,
    required this.imagePath,
    required this.priceTagColor,
    required this.productPrice
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
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
        Positioned(
          bottom : -20.h,
          child: Container(
            alignment: Alignment.center,
            height: 30.h,
            width: 83.w,
            decoration: BoxDecoration(
              color: priceTagColor,
              borderRadius: BorderRadius.circular(5.r)
            ),
            child: TextMedium(
              text: '$productPrice SAR',
              fontSize: 11.sp,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
