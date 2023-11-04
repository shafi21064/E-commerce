import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/sign_button.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_height.dart';
import 'package:internship_project/src/module/checkout/local_widget/info_input_field.dart';

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
