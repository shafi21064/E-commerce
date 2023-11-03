import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/controller/item_provider.dart';
import 'package:internship_project/src/data/global_widget/cart_count.dart';
import 'package:internship_project/src/data/global_widget/custom_button.dart';
import 'package:internship_project/src/data/global_widget/fill_custom_button.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_height.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_width.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_regular.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';
import 'package:internship_project/src/module/checkout/view/checkout.dart';
import 'package:provider/provider.dart';

class CustomBottomSheet extends StatelessWidget {
  final int index;
  const CustomBottomSheet({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<ItemProvider>(context);
    return  SizedBox(
      height: 233.h,
      child: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(25.w, 45.h, 20.w, 29.h),
              // decoration: const BoxDecoration(
              //     color: Colors.white,),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                //mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    //color: Colors.red,
                    height: 95.h,
                    width: 80.h,
                    child: Image.asset(itemProvider.itemList[index]['image']['little_size'],
                        fit: BoxFit.fill),
                  ),
                  SpaceInWidth(width: 27.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 171.w,
                        height: 38.h,
                        child: TextRegular(
                            text: itemProvider.itemList[index]['name'],
                            color: const Color(0xff7E7E7E),
                            fontSize: 16.sp
                        ),
                      ),
                      SpaceInHeight(height: 4.h),
                      TextMedium(
                        text: itemProvider.itemList[index]['price'].toString(),
                        fontSize: 15.sp,
                        color: const Color(0xffB2B2B2),
                      ),
                      SpaceInHeight(height: 3.h),
                      TextMedium(
                          text: itemProvider.itemList[index]['special_price'].toString(),
                          fontSize: 15.sp,
                        color: CustomColor.primaryColor,
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: CartCount(
                      addTap: (){
                        itemProvider.addItem(index);
                      },
                      minimizeTap: ()=> itemProvider.removeItem(index),
                      counterText: itemProvider.itemList[index]['cart_count'].toString(),
                    )
                    
                    // ),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 29.w, vertical: 16.h),
            height: 65.h,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(.8),
                  blurRadius: 5,
                  offset: const Offset(5, 2)
                )
              ]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               CustomButton(
                    buttonColor: const Color(0xffEBEBEB),
                    buttonName: 'Add to Cart',
                    nameColor: const Color(0xff989898),
                    onTap: (){
                      itemProvider.setAddToCart(index);
                      Navigator.pop(context);
                    }),
                FilledCustomButton(
                    buttonColor: CustomColor.primaryColor,
                    buttonName: 'Check Out',
                    nameColor: Colors.white,
                    onTap: (){
                      Navigator.pop(context);
                      itemProvider.setIsCheckout(index);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>  CheckOut(
                            index: index,
                          )));
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
