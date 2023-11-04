import 'package:flutter/material.dart';
import '../cart_package.dart';


class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backgroundColor,
      body: SafeArea(
        child:  Column(
          children: [
            CustomAppBar(
              appBarTitle: 'Shopping Cart',
              onTap: ()=> Navigator.pop(context),
            ),
            Expanded(
                child: ListView(
                    children: const [
                      BucketItemList()
                    ])),
            const CheckoutButton()
          ],
        ),
      )
    );
  }
}
