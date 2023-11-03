import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/controller/item_provider.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';
import 'package:provider/provider.dart';

class CartCount extends StatelessWidget {
  dynamic minimizeTap, addTap;
  String counterText;
  CartCount({super.key,
    required this.minimizeTap, required this.addTap, required this.counterText
  });

  @override
  Widget build(BuildContext context) {
    var cartController = Provider.of<ItemProvider>(context);
    return  SizedBox(
      height: 28.h,
      width: 96.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 28.h,
            width: 28.w,
            decoration: BoxDecoration(
                color: const Color(0xffF0F0F0),
                borderRadius: BorderRadius.circular(3.r)
            ),
            child: InkWell(
                onTap: minimizeTap,
                child: const Icon(
                  Icons.remove,
                  color: Color(0xff837A7A),
                )),
          ),
          TextMedium(
            text: counterText,
            fontSize: 18.sp,
            color: const Color(0xff837A7A),
          ),
          Container(
            height: 28.h,
            width: 28.w,
            decoration: BoxDecoration(
                color: const Color(0xffF0F0F0),
                borderRadius: BorderRadius.circular(3.r)
            ),
            child: InkWell(
                onTap: addTap,
                child: const Icon(
                  Icons.add,
                  color: Color(0xff837A7A),
                )),
          )
        ],
      ),
    );
  }
}
