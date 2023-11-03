import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/controller/item_provider.dart';
import 'package:internship_project/src/module/checkout/checkout_pakage.dart';
import 'package:provider/provider.dart';

class BucketItemList extends StatelessWidget {
  const BucketItemList({super.key});

  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<ItemProvider>(context);
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      child: ListView.builder(
        itemCount: itemProvider.cartList.length,
          itemBuilder: (context, index){
          return BucketItem(
            onDelete: (){
              itemProvider.removeFromCart(itemProvider.cartList[index]);
            },
              minimizeTap: (){
              itemProvider.removeItem(index);
              },
              addTap: (){
              itemProvider.addItem(index);
              },
              counterText: itemProvider.itemList[index]['cart_count'].toString(),
              itemName: itemProvider.itemList[index]['name'],
              itemPic: itemProvider.cartList[index]['image']['little_size'],
              itemPrice: itemProvider.cartList[index]['price'].toString(),
              specialPrice: itemProvider.cartList[index]['special_price'].toString(),
          );
          }
      ),
    );
  }
}
