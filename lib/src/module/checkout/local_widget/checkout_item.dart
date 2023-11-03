import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/controller/item_provider.dart';
import 'package:internship_project/src/data/global_widget/cart_count.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_height.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_width.dart';
import 'package:internship_project/src/data/global_widget/text_widget.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_regular.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';
import 'package:provider/provider.dart';


class CheckoutItem extends StatelessWidget {
  String itemName, itemPrice,itemPic, counterText, specialPrice;
    CheckoutItem({
      super.key,
      required this.itemName,
      required this.itemPic,
      required this.itemPrice,
      required this.counterText,
      required this.specialPrice
    });

  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<ItemProvider>(context);
    return Container(
      margin: EdgeInsets.all(10.w),
      padding: const EdgeInsets.all(16),
      height: 131.h,
      width: 393.w,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.r)
      ),
      child: Row(
        children: [
          SizedBox(
            height: 100.h,
              width: 100.w,
              child: Image.asset(itemPic)),
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
                  text: '$itemPrice x $counterText',
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
        ],
      )
    );
  }
}
