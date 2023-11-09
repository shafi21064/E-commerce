import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../account_package.dart';
class OrderTitleCard extends StatelessWidget {
  final String cardTitle;
  const OrderTitleCard({
    super.key,
    required this.cardTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        height: 40.h,
        width: MediaQuery.sizeOf(context).width,
        color: Colors.white,
        child:
        TextRegular(text: cardTitle,
          fontSize: 16.sp,
          color: const Color(0xff414141),
        )
    );
  }
}
