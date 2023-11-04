import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_height.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';
import 'package:internship_project/src/module/checkout/view/confirm_order.dart';

class PlaceOrderButton extends StatelessWidget {
  const PlaceOrderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 37.w, vertical: 12.h),
      height: 106.h,
      width: MediaQuery.sizeOf(context).width,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextMedium(
                  text: 'Item: 2',
                  fontSize: 14.sp,
                color: const Color(0xff5A5A5A),
              ),
              RichText(text: TextSpan(
                text: 'Total: ',
                style: TextStyle(
                  fontFamily: 'RobotoBold',
                  fontSize: 14.sp,
                  color: Color(0xff343434),
                ),
                children: [
                  TextSpan(
                    text: 'SAR 50000.00',
                    style: TextStyle(
                      color: Color(0xff5A5A5A),
                      fontFamily: 'RobotoMedium',
                      fontSize: 14.sp
                    )
                  )
                ]
              ))
            ],
          ),
          SpaceInHeight(height: 16.h),
          InkWell(
            onTap: ()=>Navigator.push(
                context, MaterialPageRoute(builder: (context)=> ConfirmOrder())),
            child: Container(
              alignment: Alignment.center,
              height: 49.h,
              width: 334.w,
              decoration: BoxDecoration(
                color: CustomColor.primaryColor,
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: TextMedium(
                text: 'PLACE ORDER',
                fontSize: 15.sp,
                color: Colors.white,
              ),
            ),
          )
        ],
      )
    );
  }
}
