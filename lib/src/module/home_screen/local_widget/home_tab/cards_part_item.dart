import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../home_package.dart';


class CardPartItem extends StatelessWidget {
  const CardPartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(18.w, 19.h, 18.w, 12.h),
      height: 130.h,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r)
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CardPart(
              cardName: 'Coupons',
              imgPath: 'assets/icons/coupon.png',
              startColor: Color(0xffFC4289),
              endColor: Color(0xffFC0431)
          ),
          CardPart(
              cardName: 'Gift Card',
              imgPath: 'assets/icons/gift-card.png',
              startColor: Color(0xff72A4FF),
              endColor: Color(0xff467FFA)
          ),
          CardPart(
              cardName: 'Slash',
              imgPath: 'assets/icons/slash.png',
              startColor: Color(0xffFC2231),
              endColor: Color(0xffFD7D3D)
          ),
          CardPart(
              cardName: 'PC Assemble',
              imgPath: 'assets/icons/pc.png',
              startColor: Color(0xff24C9AB),
              endColor: Color(0xff36DFC6)
          )
        ],
      )
    );
  }
}
