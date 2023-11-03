import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/controller/all_product_provider.dart';
import 'package:internship_project/src/controller/item_provider.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_height.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_regular.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';
import 'package:internship_project/src/module/home_screen/local_widget/home_tab/product_card.dart';
import 'package:provider/provider.dart';

class RelatedProduct extends StatelessWidget {
  const RelatedProduct({super.key});

  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<ItemProvider>(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      //height: MediaQuery.sizeOf(context).height,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextMedium(
                text: 'Related Product',
                fontSize: 16.sp,
                color: const Color(0xff021E65),
              ),
              TextRegular(
                  text: 'View All',
                  color: const Color(0xff021E65),
                  fontSize: 13.sp
              )
            ],
          ),
          SpaceInHeight(height: 16.h),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: ProductProvider().products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 0
            ),
            itemBuilder:(context, index) {
              return ProductCard(
                onCartTap: (){
                  itemProvider.setAddToCart(index);
                  final snackBar = SnackBar(
                    backgroundColor: CustomColor.primaryColor,
                      content: const Text('Added to Cart')
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                productImage: itemProvider.itemList[index]['image']['little_size'],
                productName: itemProvider.itemList[index]['name'],
                productPrice: itemProvider.itemList[index]['price'].toString(),
                  addToCart: itemProvider.itemList[index]['in_cart']
              );
            },),
        ],
      ),
    );
  }
}

