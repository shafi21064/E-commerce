import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/controller/all_product_provider.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_height.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_regular.dart';
import 'package:internship_project/src/module/home_screen/local_widget/home_tab/product_card.dart';
import 'package:internship_project/src/module/home_screen/view/home_tab/details_screen.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class BestSalesProduct extends StatelessWidget {
  const BestSalesProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: MediaQuery.sizeOf(context).height,
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: ProductProvider().products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2
        ),
        itemBuilder:(context, index) {
          return ProductCard(
            onTap: (){
              pushNewScreen(
                context,
                screen: DetailsScreen(
                    productImage: ProductProvider().products[index]['image']['big_size']),
                withNavBar: false, // OPTIONAL VALUE. True by default.
                pageTransitionAnimation: PageTransitionAnimation.cupertino,
              );
            },
            productImage: ProductProvider().products[index]['image']['little_size'],
            productName: ProductProvider().products[index]['name'],
            productPrice: ProductProvider().products[index]['price'].toString(),
          );
        },),
    );
  }
}

