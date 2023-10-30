import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/controller/all_product_provider.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_regular.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';

class ProductCard extends StatelessWidget {
  final String productImage, productName;
  const ProductCard({
    super.key,
    required this.productImage,
    required this.productName
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 234.h,
      width: 182.w,
      child: Card(
        color: Colors.white,
        elevation: 10,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.r)),
        shadowColor: Colors.black,
        child: Column(
          children: [
            SizedBox(
              height: 122.h,
                width: 103.w,
                child: Image.asset(productImage, fit: BoxFit.fill,)),
            TextRegular(
                text: productName,
                color: CustomColor.cardTextColor,
                fontSize: 12.sp
            )
          ],
        ),
      ),
    );
  }
}
