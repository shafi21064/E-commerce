import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_height.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';
import 'package:internship_project/src/module/home_screen/local_widget/home_tab/details/button.dart';
import 'package:internship_project/src/module/home_screen/local_widget/home_tab/details/header_part.dart';
import 'package:internship_project/src/module/home_screen/local_widget/home_tab/details/product_pic.dart';
import 'package:internship_project/src/module/home_screen/local_widget/home_tab/details/related_product.dart';
import 'package:internship_project/src/module/home_screen/local_widget/home_tab/details/review&rating.dart';
import 'package:internship_project/src/module/home_screen/local_widget/home_tab/details/start_rating.dart';
import 'package:internship_project/src/module/home_screen/local_widget/home_tab/details/tab_bar_view.dart';
import 'package:internship_project/src/module/home_screen/local_widget/home_tab/details/voucher_part.dart';

class DetailsScreen extends StatelessWidget {
String productImage;
final String productSpecialPrice, productPrice,productSubtitle;
final int index;
final dynamic onPress;
final bool favorite;
    DetailsScreen({
      super.key,
      required this.productImage,
      required this.productSpecialPrice,
      required this.productPrice,
      required this.productSubtitle,
      required this.index,
      required this.onPress,
      required this.favorite
    });

  @override
  Widget build(BuildContext context) {


    return Scaffold(
        backgroundColor: CustomColor.backgroundColor,
      body: SafeArea(
             child: Column(
               children: [
                 Expanded(
                   child: SingleChildScrollView(
                     child: Column(
                       children: [
                         ProductPic(
                         productImage: productImage
                         ),
                         SpaceInHeight(height: 27.h),
                          HeaderPart(
                           productPrice: productPrice,
                           productSpecialPrice: productSpecialPrice,
                           productSubtitle: productSubtitle,
                         ),
                         SpaceInHeight(height: 24.h),
                         const VoucherPart(),
                         SpaceInHeight(height: 16.h),
                         const TabBarViewInfo(),
                         SpaceInHeight(height: 17.h),
                         const RelatedProduct(),
                         SpaceInHeight(height: 39.h),
                         const ReviewsAndRating(),
                         SpaceInHeight(height: 13.h),
                       ],
                     ),
                   ),
                 ),
                 CustomButtonForBuy(
                   index: index,
                   favorite: favorite,
                   onPress: onPress,
                 )
               ],
             ),
           ),

    );
  }
}
