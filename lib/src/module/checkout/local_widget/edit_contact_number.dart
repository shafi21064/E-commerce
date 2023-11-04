import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../checkout_pakage.dart';

class EditContactNumber extends StatelessWidget {
  const EditContactNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 224.h,
      child: Column(
        children: [
          InfoInputForm(
              title: 'Contact Number*',
              fieldHeight: 50.h,
              fieldWidth: 331.w,
              hintText: '(747) 978-9349'
          ),
          SpaceInHeight(height: 26.h),
          CustomBigButton(
              onTap: (){},
              buttonName: 'SAVE NUMBER')
        ],
      ),
    );
  }
}
