import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../checkout_pakage.dart';

class TitleCard extends StatelessWidget {
  final String cardTitle, cardButton;
  const TitleCard({
    super.key,
    required this.cardTitle,
    required this.cardButton
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      height: 29.h,
      width: MediaQuery.sizeOf(context).width,
      color: Colors.white,
      child:
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextMedium(text: cardTitle,
              fontSize: 16.sp,
            color: const Color(0xff414141),
          ),
          TextMedium(
              text: cardButton,
              fontSize: 16.sp,
            color: CustomColor.primaryColor,
          )
        ],
      )
    );
  }
}
