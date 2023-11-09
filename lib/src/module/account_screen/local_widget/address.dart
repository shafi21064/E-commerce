import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../checkout/checkout_pakage.dart';

class Address extends StatelessWidget {
  const Address({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 419.h,
      child: Padding(
        padding: EdgeInsets.fromLTRB(42.w, 38.h, 42.w, 0.h),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
                height: 77.h,
                width: 740.w,
                child: InfoInputForm(
                  title: 'Address*',
                  hintText: 'Enter road no, block/sector',
                  fieldHeight: 50.h,
                  fieldWidth: 331.w,
                )
            ),
            SpaceInHeight(height: 22.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InfoInputForm(
                    title: 'Area*',
                    fieldHeight: 50.h,
                    fieldWidth: 161.w,
                    hintText: 'Enter Area'),
                InfoInputForm(
                    title: 'City*',
                    fieldHeight: 50.h,
                    fieldWidth: 161.w,
                    hintText: 'Enter City'),
              ],
            ),
            SpaceInHeight(height: 22.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InfoInputForm(
                    title: 'Region',
                    fieldHeight: 50.h,
                    fieldWidth: 161.w,
                    hintText: 'Enter Region'),
                InfoInputForm(
                    title: 'Country*',
                    fieldHeight: 50.h,
                    fieldWidth: 161.w,
                    hintText: 'Enter Country'),
              ],
            ),
            SpaceInHeight(height: 16.h),
            CustomBigButton(onTap: (){
              Navigator.pop(context);
            },
                buttonName: 'SAVE ADDRESS')
          ],
        ),
      ),
    );
  }
}
