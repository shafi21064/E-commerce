import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/controller/item_provider.dart';
import 'package:internship_project/src/module/checkout/checkout_pakage.dart';
import 'package:internship_project/src/module/checkout/local_widget/checkout_item.dart';
import 'package:internship_project/src/module/checkout/view/checkout.dart';
import 'package:provider/provider.dart';

class CheckoutItemList extends StatelessWidget {
  const CheckoutItemList({super.key});

  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<ItemProvider>(context);
    return SizedBox(
      height: 290.h,
      width: MediaQuery.sizeOf(context).width,
      child: ListView.builder(
        //physics: const NeverScrollableScrollPhysics(),
        itemCount: itemProvider.checkout.length,
          itemBuilder: (context, index){
          return CheckoutItem(
              counterText: itemProvider.checkout[index]['cart_count'].toString(),
              itemName: itemProvider.checkout[index]['name'],
              itemPic: itemProvider.checkout[index]['image']['little_size'],
              itemPrice: itemProvider.checkout[index]['price'].toString(),
              specialPrice: itemProvider.checkout[index]['special_price'].toString(),
          );
          }
      ),
    );
  }
}
