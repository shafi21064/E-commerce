import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/text_widget.dart';

class TextDetailsRow extends StatelessWidget {
  String pricingPurpose, price;
  TextDetailsRow({super.key, required this.pricingPurpose, required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextWidget(
            title: pricingPurpose,
            fontSize: 16.sp,
            color: Colors.black
        ),
        TextWidget(
            title: price,
            fontSize: 16.sp,
            color: Colors.black
        )
      ],
    );
  }
}
