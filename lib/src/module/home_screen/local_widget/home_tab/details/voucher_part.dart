import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VoucherPart extends StatelessWidget {
  const VoucherPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 9.h),
      height: 109.h,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 7,
            offset: Offset(0, 7) // changes position of shadow
          ),
        ],
      ),
      child: Image.asset('assets/icons/voucher.png'),
    );
  }
}
