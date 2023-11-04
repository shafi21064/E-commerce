import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../home_package.dart';


class ProductCard extends StatelessWidget {
  final String productImage, productName, productPrice;
  final dynamic onTap, onCartTap;
  final bool addToCart;
  const ProductCard({
    super.key,
    required this.productImage,
    required this.productName,
    required this.productPrice,
    required this.addToCart,
    this.onTap,
    this.onCartTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 0.h ),
      height: 235.h,
      width: 182.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.8),
            blurRadius: 4.r,
            offset: const Offset(0, 5)
          )
        ]
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(10.w, 0.h, 10.w, 0.h),
        child: Column(
          children: [
            InkWell(
              onTap: onTap,
              child: Column(
                children: [
                  SizedBox(
                    height: 120.h,
                      width: 100.w,
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
                    text: '$productPrice SAR',
                    fontSize: 12.sp,
                  color: CustomColor.primaryColor,
                ),
                SizedBox(
                  height: 26.h,
                    width: 26.w,
                    child: InkWell(
                      onTap: onCartTap,
                        child: addToCart?
                        CartIcon(color: CustomColor.primaryColor, iconColor: Colors.white,) :
                        const CartIcon(color: Color(0xffF4F4F4), iconColor: Color(0xff3B3B3B),)
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
