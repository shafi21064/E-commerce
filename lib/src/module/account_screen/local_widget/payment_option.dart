import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/global_widget/space_widget/space_in_width.dart';
import '../../cart_screen/cart_package.dart';

class PaymentOption extends StatefulWidget {
  final String optionName, imagePath;
  const PaymentOption({
    super.key,
    required this.optionName,
    required this.imagePath
  });
  @override
  State<PaymentOption> createState() => _PaymentOptionState();
}

class _PaymentOptionState extends State<PaymentOption> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(13.w, 18.h, 13.w, 0.h),
      height: 80.h,
      width: 331.w,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffE8E8E8))
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          InkWell(
            onTap: (){
              setState(() {
                selected = !selected;
              });
            },
            child: Container(
                height: 20.h,
                width: 20.w,
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffDBDBDB)),
                    shape: BoxShape.circle,
                    color: selected? CustomColor.primaryColor : Colors.white
                ),
                child: selected? const Icon(Icons.done_sharp, size: 10, color: Colors.white,) : null
            ),
          ),
          SpaceInWidth(width: 9.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextMedium(
                  text: widget.optionName,
                  fontSize: 13.sp),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      height: 26.h,
                      width: 169.w,
                      child: TextRegular(
                        text: 'Pay form bitcoin account using bitcoin Payment gateway',
                        fontSize: 10.sp,
                        color: const Color(0xff8E8E8E),
                      )),
                  Image.asset(widget.imagePath, height: 26.h, width: 80.w,)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
