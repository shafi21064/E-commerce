import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/controller/item_provider.dart';
import 'package:internship_project/src/module/account_screen/local_widget/payment_method.dart';
import 'package:provider/provider.dart';
import '../account_package.dart';

class PaymentStatus extends StatelessWidget {
  const PaymentStatus({super.key});

  @override
  Widget build(BuildContext context) {
    final itemProvider = Provider.of<ItemProvider>(context);
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
            color: const Color(0xff414141),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                  text: TextSpan(
                    text: 'Account: ',
                    style: TextStyle(
                      color: const Color(0xffBABABA),
                      fontSize: 16.sp,
                      fontFamily: 'RobotoMedium'
                    ),
                    children: [
                      TextSpan(
                        text: 'SAR ${itemProvider.totalWithAll()}',
                        style: TextStyle(
                          fontFamily: 'RobotoMedium',
                          fontSize: 16.sp,
                          color: const Color(0xff414141)
                        )
                      )
                    ]
                  ),
              ),
              FilledCustomButton(
                  buttonColor: CustomColor.primaryColor,
                  buttonName: 'Unpaid',
                  nameColor: Colors.white,
                  onTap: (){
                    showModalBottomSheet<void>(
                      showDragHandle: true,
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(17.r))),
                      context: context,
                      builder: (BuildContext context) {
                        return const PaymentMethod();
                      },
                    );
                  }
              )
            ],
          )
        ],
      ),
    );
  }
}
