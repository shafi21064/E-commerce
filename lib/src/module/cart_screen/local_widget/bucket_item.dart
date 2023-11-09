import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_width.dart';
import '../cart_package.dart';


class BucketItem extends StatelessWidget {
  String itemName, itemPrice,itemPic, counterText, specialPrice;
  dynamic onDelete,minimizeTap, addTap, onCheckoutTap;
  final bool inCheckout;
    BucketItem({
      super.key,
      required this.itemName,
      required this.itemPic,
      required this.itemPrice,
      required this.onDelete,
      required this.minimizeTap,
      required this.addTap,
      required this.counterText,
      required this.specialPrice,
      required this.inCheckout,
      required this.onCheckoutTap
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 7.h),
      padding: const EdgeInsets.all(16),
      height: 137.h,
      width: MediaQuery.sizeOf(context).width,
      decoration: const BoxDecoration(
          color: Colors.white,
          //borderRadius: BorderRadius.circular(5.r)
      ),
      child: Row(
        children: [
          SizedBox(
            height: 100.h,
              width: 100.w,
              child: Image.asset(itemPic)),
          SpaceInWidth(width: 10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 38.h,
                width: 171.w,
                child: TextRegular(
                  text: itemName,
                  fontSize: 16.sp,
                  color: const Color(0xff7E7E7E))
              ),
              SpaceInHeight(height: 5.h),
              TextMedium(
                  text: itemPrice,
                  fontSize: 15.sp,
                color: const Color(0xffB2B2B2),
              ),
              SpaceInHeight(height: 8.h),
              TextMedium(
                  text: specialPrice,
                  fontSize: 15.sp,
                color: CustomColor.primaryColor,
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              InkWell(
                onTap: onCheckoutTap,
                child: Container(
                  height: 24.h,
                  width: 24.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffDBDBDB)),
                    shape: BoxShape.circle,
                    color: inCheckout? CustomColor.primaryColor : Colors.white
                  ),
                  child: inCheckout? Icon(Icons.done, size: 10, color: Colors.white,) : null
                ),
              ),
              CartCount(
                  minimizeTap: minimizeTap,
                  addTap: addTap,
                  counterText: counterText
              )
            ],
          )
        ],
      )
    );
  }
}
