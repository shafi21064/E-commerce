import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/controller/item_provider.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_height.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_width.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_regular.dart';
import 'package:internship_project/src/module/account_screen/local_widget/payment_option.dart';
import 'package:internship_project/src/module/checkout/checkout_pakage.dart';
import 'package:provider/provider.dart';

import '../../../data/utils/custom_color.dart';
import '../../log_in&sign_uo/package.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    final itemProvider = Provider.of<ItemProvider>(context);
    return Container(
      height: 449.h,
      width: MediaQuery.sizeOf(context).width,
      padding: EdgeInsets.fromLTRB(42.w, 38.h, 42.w, 0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 21.h,
            width: 106.w,
            child: TextMedium(
              text: 'Amount to pay',
              fontSize: 16.sp,
              color: const Color(0xff414141),
            ),
          ),
          SpaceInHeight(height: 6.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 16.h),
            height: 50.h,
            width: 331.w,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffE8E8E8))
            ),
            child: TextMedium(
              text: 'SAR ${itemProvider.totalWithAll()}',
              fontSize: 13.sp,
              color: const Color(0xff262626),
            ),
          ),
          SpaceInHeight(height: 19.h),
          TextMedium(
              text: 'Select Payment method',
              fontSize: 16.sp,
            color: const Color(0xff414141),
          ),
          SpaceInHeight(height: 21.h),
          const PaymentOption(
            optionName: 'Payeer',
            imagePath: 'assets/icons/payeer_logo.png',
          ),
          SpaceInHeight(height: 17.h),
          const PaymentOption(
            optionName: 'Paypal',
            imagePath: 'assets/icons/paypal_logo.png',
          ),
          SpaceInHeight(height: 22.h),
          CustomBigButton(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>
            const ConfirmOrder()));
          },
              buttonName: 'Make Payment')
        ],
      ),
    );
  }
}
