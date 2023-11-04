import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../checkout_pakage.dart';



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
      margin: EdgeInsets.fromLTRB(10.w, 0.h, 10.w, 10.h),
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
