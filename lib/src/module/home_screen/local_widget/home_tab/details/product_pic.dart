import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/controller/all_product_provider.dart';
import 'package:provider/provider.dart';

class ProductPic extends StatelessWidget {
String productImage;

 ProductPic({
   super.key,
   required this.productImage,
 });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      height: 309.h,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.9),
            blurRadius: 5,
            offset: Offset(0, 2)
          )
        ]
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: InkWell(
              onTap: ()=>Navigator.pop(context),
                child: Image.asset('assets/icons/back.png'))
          ),
          Center(
            child: SizedBox(
              height: 200.h,
              width: 200.w,
              child: Image.asset( productImage.toString(),
              ),
            ),
          ),
        ],
      ),
    );

  }
}
