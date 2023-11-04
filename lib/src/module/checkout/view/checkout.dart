import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../checkout_pakage.dart';


class CheckOut extends StatelessWidget {
  final int index;
  const CheckOut({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<ItemProvider>(context);
    return Scaffold(
      backgroundColor: CustomColor.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomAppBar(
                      onTap: (){
                        //itemProvider.removeFromCheckout(index);
                        Navigator.pop(context);
                      },
                      appBarTitle: 'Checkout information',
                    ),
                    SpaceInHeight(height: 15.h),
                    const TitleCard(
                      cardTitle: 'Billing Address',
                      cardButton: 'CHANGE',
                    ),
                    const NameAndAddress(),
                    const TitleCard(
                        cardTitle: 'Contact Number',
                        cardButton: ''),
                    const ContactNumber(),
                    const TitleCard(
                        cardTitle: 'Products',
                        cardButton: ''),
                    SpaceInHeight(height: 12.h),
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
            const PlaceOrderButton()
          ],
        ),
      )
    );
    }
}