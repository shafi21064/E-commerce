import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_light.dart';

class Specification extends StatelessWidget {
  final String productSpecification;
  const Specification({super.key, required this.productSpecification});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextLight(
        text: productSpecification,
        fontSize: 16.sp,
        color: Color(0xff333333),
      )
    );
  }
}