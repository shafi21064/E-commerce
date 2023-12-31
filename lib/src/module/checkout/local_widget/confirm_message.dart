import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/module/log_in&sign_uo/package.dart';
import '../checkout_pakage.dart';

class ConfirmMessage extends StatelessWidget {
  const ConfirmMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.h,
      width: 255.w,
      //color: Colors.deepOrange,
      child: Center(
        child: Column(
          children: [
            TextMedium(
                text: 'Your order is confirmed!',
                fontSize: 20.sp,
                color: Color(0xff414141)),
            SpaceInHeight(height: 20.h),
            Text(
              textAlign: TextAlign.center,
              "we'll deliver your order immediately, \nmake sure your order put on the doorstep",
              style: TextStyle(fontSize: 12.sp, color: Colors.black),
            ),
            SpaceInHeight(height: 20.h),
            CustomBigButton(onTap: (){
              Navigator.pushAndRemoveUntil(
                  context, MaterialPageRoute(builder: (context)=> NavBar()), (route) => false);
            },
                buttonName: 'Continue Shopping')
          ],
        ),
      ),
    );
  }
}
