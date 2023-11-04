import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/controller/item_provider.dart';
import 'package:internship_project/src/data/global_widget/cart_button.dart';
import 'package:internship_project/src/data/global_widget/fill_custom_button.dart';
import 'package:internship_project/src/data/global_widget/wish_icon.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';
import 'package:internship_project/src/module/home_screen/local_widget/home_tab/details/custom_bottom_sheet.dart';
import 'package:provider/provider.dart';

class CustomButtonForBuy extends StatelessWidget {
  final int index;
  final dynamic onPress;
  final bool favorite;
  const CustomButtonForBuy({
    super.key,
    required this.index,
    required this.onPress,
    required this.favorite
  });

  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<ItemProvider>(context);
    return Container(
      height: 67.h,
      width: MediaQuery.sizeOf(context).width,
      //color: Colors.red,
      child: Center(
        child: SizedBox(
          height: 36.h,
          width: 340.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: onPress,
                child: SizedBox(
                  height: 22.h,
                  width: 25.w,
                  child: favorite? Image.asset('assets/icons/wishlist.png',  color: Colors.red, ) :
                  Image.asset('assets/icons/wishlist.png',)
                ),
              ),
               CartCustomButton(
                onTap: ()=> itemProvider.addItem(index),
                  itemInCart: itemProvider.itemList[index]['cart_count'].toString(),
                  buttonColor: Colors.red,
                  buttonName: 'My Cart',
              ),
              FilledCustomButton(
                  buttonColor: CustomColor.primaryColor,
                  buttonName: 'Buy Now',
                nameColor: Colors.white,
                onTap: () {
                  showModalBottomSheet<void>(
                    showDragHandle: true,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(17.r))),
                    context: context,
                    builder: (BuildContext context) {
                      return CustomBottomSheet(
                        index: index,
                      );
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
