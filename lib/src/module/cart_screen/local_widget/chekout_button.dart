import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/controller/item_provider.dart';
import 'package:internship_project/src/data/global_widget/fill_custom_button.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_width.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';
import 'package:internship_project/src/module/home_screen/home_package.dart';
import 'package:provider/provider.dart';

class CheckoutButton extends StatefulWidget {
   CheckoutButton({super.key,});

  @override
  State<CheckoutButton> createState() => _CheckoutButtonState();
}

class _CheckoutButtonState extends State<CheckoutButton> {
   bool allSelected = false;

  @override
  Widget build(BuildContext context) {
    final itemProvider = Provider.of<ItemProvider>(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 28.w),
      alignment: Alignment.center,
      height: 67.h,
      width: 416.w,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Row(
              children: [
                InkWell(
                  onTap: (){
                    setState(() {
                      allSelected = !allSelected;
                    });
                  },
                  child: Container(
                    height: 20.h,
                    width: 20.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffDBDBDB)),
                      shape: BoxShape.circle,
                      color: allSelected? CustomColor.primaryColor : Colors.white
                    ),
                    child: allSelected? const Icon(Icons.done_sharp, size: 10, color: Colors.white,) : null
                  ),
                ),
                SpaceInWidth(width: 6.w),
                TextMedium(
                    text: 'All',
                    fontSize: 14.sp,
                  color: const Color(0xff5A5A5A),
                ),
              ],
            ),
          ),
          RichText(text: TextSpan(
            text: 'Total: ',
            style: TextStyle(
              fontSize: 14.sp,
              color: const Color(0xff5A5A5A),
              fontFamily: 'RobotoMedium'
            ),
            children:[
              TextSpan(
                text: 'SAR ${itemProvider.getTotalPrice().toStringAsFixed(2)}',
                style: TextStyle(
                  color: CustomColor.primaryColor,
                  fontSize: 14.sp,
                  fontFamily: 'RobotoMedium'
                )
              )
            ]
          )),
          InkWell(
            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> const CheckOut())),
            child: Container(
              alignment: Alignment.center,
              height: 37.h,
              width: 132.w,
              decoration: BoxDecoration(
                color: CustomColor.primaryColor,
                borderRadius: BorderRadius.circular(5.r)
              ),
              child: TextMedium(
                text: 'Check Out',
                fontSize: 14.sp,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
