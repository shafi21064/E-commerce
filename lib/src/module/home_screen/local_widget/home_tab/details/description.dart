import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/controller/all_product_provider.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_light.dart';


class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextLight(
        text: ProductProvider().products[0]['details'],
        fontSize: 16.sp,
        color: Color(0xff333333),
      )
    );
  }
}