import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../checkout/checkout_pakage.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.h,
      child: Padding(
        padding: EdgeInsets.fromLTRB(42.w, 38.h, 42.w, 0.h),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InfoInputForm(
                    title: 'First Name*',
                    fieldHeight: 50.h,
                    fieldWidth: 161.w,
                    hintText: 'Enter First Name'),
                InfoInputForm(
                    title: 'Last Name*',
                    fieldHeight: 50.h,
                    fieldWidth: 161.w,
                    hintText: 'Enter Last Name'),
              ],
            ),
            SpaceInHeight(height: 22.h),
            SizedBox(
                height: 77.h,
                width: 740.w,
                child: InfoInputForm(
                  title: 'Email*',
                  hintText: 'Enter your Email',
                  fieldHeight: 50.h,
                  fieldWidth: 331.w,
                )
            ),
            SpaceInHeight(height: 22.h),
            SizedBox(
                height: 77.h,
                width: 740.w,
                child: InfoInputForm(
                  title: 'Phone*',
                  hintText: 'Enter Phone',
                  fieldHeight: 50.h,
                  fieldWidth: 331.w,
                )
            ),

            SpaceInHeight(height: 16.h),
            CustomBigButton(onTap: (){
              Navigator.pop(context);
            },
                buttonName: 'SAVE')
          ],
        ),
      ),
    );
  }
}
