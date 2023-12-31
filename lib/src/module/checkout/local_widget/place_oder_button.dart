import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../checkout_pakage.dart';

class PlaceOrderButton extends StatelessWidget {
  const PlaceOrderButton({super.key});

  @override
  Widget build(BuildContext context) {
    final itemProvider = Provider.of<ItemProvider>(context);
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
                  text: 'Item: ${itemProvider.checkout.length}',
                  fontSize: 14.sp,
                color: const Color(0xff5A5A5A),
              ),
              RichText(text: TextSpan(
                text: 'Total: ',
                style: TextStyle(
                  fontFamily: 'RobotoBold',
                  fontSize: 14.sp,
                  color: const Color(0xff343434),
                ),
                children: [
                  TextSpan(
                    text: 'SAR ${itemProvider.totalWithAll()}',
                    style: TextStyle(
                      color: const Color(0xff5A5A5A),
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
                context, MaterialPageRoute(builder: (context)=> const ConfirmOrder())),
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
