import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/controller/all_product_provider.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_height.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_regular.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';

class ProductCard extends StatelessWidget {
  final String productImage, productName, productPrice;
  final dynamic onTap;
  const ProductCard({
    super.key,
    required this.productImage,
    required this.productName,
    required this.productPrice,
    this.onTap
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              InkWell(
                onTap: onTap,
                child: Column(
                  children: [
                    SizedBox(
                      height: 122.h,
                        width: 103.w,
                        child: Image.asset(productImage,)),
                    TextRegular(
                        text: productName,
                        color: CustomColor.cardTextColor,
                        fontSize: 12.sp
                    ),
                  ],
                ),
              ),
              SpaceInHeight(height: 12.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextMedium(
                      text: productPrice,
                      fontSize: 12.sp,
                    color: CustomColor.primaryColor,
                  ),
                  Image.asset('assets/icons/little_cart.png')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
