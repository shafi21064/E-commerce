import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/cart_button.dart';
import 'package:internship_project/src/data/global_widget/fill_custom_button.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';

class CustomButtonForBuy extends StatelessWidget {
  const CustomButtonForBuy({super.key});

  @override
  Widget build(BuildContext context) {
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
              SizedBox(
                height: 22.h,
                width: 25.w,
                child: Image.asset('assets/icons/wishlist.png'),
              ),
              CartCustomButton(
                  buttonColor: Colors.red,
                  buttonName: 'Add to cart'),
              FilledCustomButton(
                  buttonColor: CustomColor.primaryColor,
                  buttonName: 'Buy Now',
                nameColor: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
