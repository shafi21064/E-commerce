import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartIcon extends StatelessWidget {
  final Color color, iconColor;
  const CartIcon({
    super.key,
    required this.color,
    required this.iconColor
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(5.3.w, 5.6.h, 3.7.w, 4.4.h),
      height: 26.h,
      width: 26.w,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle
      ),
      child: Image.asset('assets/icons/cart.png', color: iconColor,),
    );
  }
}
