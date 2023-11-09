import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/custom_app_bar.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_height.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';
import 'package:internship_project/src/module/account_screen/local_widget/payment_status.dart';
import 'package:internship_project/src/module/account_screen/local_widget/status_indicator.dart';
import 'package:internship_project/src/module/account_screen/local_widget/thank_you_message.dart';
import 'package:internship_project/src/module/account_screen/local_widget/title_card.dart';
import 'package:internship_project/src/module/checkout/checkout_pakage.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
                appBarTitle: 'Order Details',
                onTap: (){}
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const StatusIndicator(),
                    SpaceInHeight(height: 17.h),
                    const OrderTitleCard(
                        cardTitle: 'Contact Number',
                        ),
                    SpaceInHeight(height: 19.h),
                    const ThankYuMessage(),
                    SpaceInHeight(height: 18.h),
                    const TitleCard(
                        cardTitle: 'Produtcs',
                        cardButton: ''),
                    SpaceInHeight(height: 17.h),
                    const CheckoutItemList(),
                    const TitleCard(
                        cardTitle: 'Order Summary',
                        cardButton: ''),
                    SpaceInHeight(height: 13.h),
                    const PaymentDetails(),
                    SpaceInHeight(height: 14.h),
                  ],
                ),
              ),
            ),
            const PaymentStatus()
          ],
        ),
      ),
    );
  }
}
