import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../checkout_pakage.dart';

class TextDetailsRow extends StatelessWidget {
  String pricingPurpose, price;
  Color color;
  TextDetailsRow({super.key, required this.pricingPurpose, required this.price, required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextRegular(
            text: pricingPurpose,
            fontSize: 14.sp,
            color: color
        ),
        TextRegular(
            text: price,
            fontSize: 14.sp,
            color: color
        )
      ],
    );
  }
}
