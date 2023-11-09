import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../home_package.dart';


class DetailsScreen extends StatelessWidget {
String productImage;
final String productSpecialPrice, productPrice,productSubtitle, description, specification;
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
      required this.favorite,
      required this.specification,
      required this.description
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
                         TabBarViewInfo(
                           description: description,
                           specification: specification,
                         ),
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
