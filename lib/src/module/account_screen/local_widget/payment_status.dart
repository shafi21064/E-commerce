import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/fill_custom_button.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';

class PaymentStatus extends StatelessWidget {
  const PaymentStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
      height: 85.h,
      width: 415.w,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextMedium(
              text: 'Payment Status',
              fontSize: 16.sp,
            color: Color(0xff414141),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                  text: TextSpan(
                    text: 'Account: ',
                    style: TextStyle(
                      color: Color(0xffBABABA),
                      fontSize: 16.sp,
                      fontFamily: 'RobotoMedium'
                    ),
                    children: [
                      TextSpan(
                        text: 'XAF 50000.00',
                        style: TextStyle(
                          fontFamily: 'RobotoMedium',
                          fontSize: 16.sp,
                          color: Color(0xff414141)
                        )
                      )
                    ]
                  ),
              ),
              FilledCustomButton(
                  buttonColor: CustomColor.primaryColor,
                  buttonName: 'Unpaid',
                  nameColor: Colors.white,
                  onTap: (){}
              )
            ],
          )
        ],
      ),
    );
  }
}
