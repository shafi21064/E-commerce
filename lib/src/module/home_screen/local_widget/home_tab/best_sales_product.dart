import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/controller/all_product_provider.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_height.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';
import 'package:internship_project/src/module/home_screen/local_widget/home_tab/product_card.dart';

class BestSalesProduct extends StatelessWidget {
  const BestSalesProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.h,
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextMedium(
              text: 'Best Sale Products',
              fontSize: 13.sp,
            color: Color(0xff434343),
          ),
          SpaceInHeight(height: 13.h),
         Expanded(
           child: GridView.builder(
             itemCount: ProductProvider().products.length,
               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 2
               ),
               itemBuilder:(context, index) {
                 return ProductCard(
                   productImage: ProductProvider().products[index]['image'],
                   productName: ProductProvider().products[index]['name'],
                 );
               },),
         )
        ],
      ),
    );
  }
}
