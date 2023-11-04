import 'package:flutter/material.dart';
import 'package:internship_project/src/data/global_widget/custom_app_bar.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';
import 'package:internship_project/src/module/cart_screen/local_widget/bucket_item_list.dart';

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
          ],
        ),
      )
    );
  }
}
