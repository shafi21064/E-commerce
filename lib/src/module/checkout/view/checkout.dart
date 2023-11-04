import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/controller/item_provider.dart';
import 'package:internship_project/src/data/global_widget/custom_app_bar.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_height.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_width.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';
import 'package:internship_project/src/module/checkout/checkout_pakage.dart';
import 'package:internship_project/src/module/checkout/local_widget/checkout_item_list.dart';
import 'package:internship_project/src/module/checkout/local_widget/contact_number.dart';
import 'package:internship_project/src/module/checkout/local_widget/place_oder_button.dart';
import 'package:internship_project/src/module/checkout/local_widget/title_card.dart';
import 'package:internship_project/src/module/checkout/local_widget/name&address.dart';
import 'package:provider/provider.dart';

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