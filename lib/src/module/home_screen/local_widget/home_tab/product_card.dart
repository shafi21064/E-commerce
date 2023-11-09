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
      margin: EdgeInsets.symmetric(horizontal: 5.w, ),
      height: 234.h,
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
        padding: EdgeInsets.fromLTRB(11.w, 10.h, 11.w, 0.h),
        child: Column(
          children: [
            InkWell(
              onTap: onTap,
              child: Column(
                children: [
                  SizedBox(
                    height: 100.h,
                      width: 100.w,
                      child: Image.asset(productImage, fit: BoxFit.fill,)),
                  SpaceInHeight(height: 7.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      height: 33.h,
                      width: 128.w,
                      child: TextRegular(
                          text: productName,
                          color: CustomColor.cardTextColor,
                          fontSize: 12.sp
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //SpaceInHeight(height: 6.h),
            SizedBox(
              height: 26.h,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 16.h,
                    width: 60.w,
                    child: TextMedium(
                        text: '$productPrice SAR',
                        fontSize: 12.sp,
                      color: CustomColor.primaryColor,
                    ),
                  ),
                  SizedBox(
                    height: 26.h,
                      width: 26.w,
                      child: InkWell(
                        onTap: onCartTap,
                          child: addToCart?
                          const CartIcon(color: CustomColor.primaryColor, iconColor: Colors.white,) :
                          const CartIcon(color: Color(0xffF4F4F4), iconColor: Color(0xff3B3B3B),)
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
