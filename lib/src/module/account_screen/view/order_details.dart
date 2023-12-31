import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../account_package.dart';

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
                        cardTitle: 'Products',
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
