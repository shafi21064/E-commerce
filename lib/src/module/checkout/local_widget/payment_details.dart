import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../checkout_pakage.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final itemProvider = Provider.of<ItemProvider>(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      padding: EdgeInsets.fromLTRB(11.w, 18.h, 10.w, 13.h),
      height: 150.h,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextDetailsRow(
            pricingPurpose: 'Subtotal',
            price: 'SAR ${itemProvider.getTotalPrice()}',
            color: const Color(0xff7E7E7E),
          ),
          SpaceInHeight(height: 14.h),
          TextDetailsRow(
            pricingPurpose: 'Delivery Charge',
            price: 'SAR 500.00',
            color: const Color(0xff7E7E7E),
          ),
          SpaceInHeight(height: 14.h),
          TextDetailsRow(
            pricingPurpose: 'Vat',
            price: 'SAR 500.00',
            color: const Color(0xff7E7E7E),
          ),
          SpaceInHeight(height: 15.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextMedium(
                  text: 'Total',
                  fontSize: 15.sp,
                color: const Color(0xff4D4D4D),
              ),
              TextMedium(
                text: 'SAR ${itemProvider.totalWithAll()}',
                fontSize: 15.sp,
                color: const Color(0xff4D4D4D),
              ),
            ],
          )
        ],
      ),
    );
  }
}
