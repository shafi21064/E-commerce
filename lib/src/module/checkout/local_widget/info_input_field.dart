import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../checkout_pakage.dart';

class InfoInputForm extends StatelessWidget {
  final String title, hintText;
  final double fieldHeight, fieldWidth;
  const InfoInputForm({
    super.key,
    required this.title,
    required this.fieldHeight,
    required this.fieldWidth,
    required this.hintText
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextRegular(text: title,
            color: const Color(0xff9A9A9A),
            fontSize: 15.sp),
        SpaceInHeight(height: 7.h),
        SizedBox(
          height: fieldHeight,
          width: fieldWidth,
          child: TextFormField(
            decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(
                    fontSize: 13.sp,
                    fontFamily: 'RobotoRegular',
                    color: const Color(0xff9A9A9A)
                ),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffE8E8E8))
                ),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffE8E8E8))
                )
            ),
          ),
        )
      ],
    );
  }
}
