import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/text_widget.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_regular.dart';

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
        TextWidget(
            title: price,
            fontSize: 14.sp,
            color: color
        )
      ],
    );
  }
}
