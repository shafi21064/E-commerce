import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputForm extends StatelessWidget {
  final String hintText;
  final Widget? prefixIcon, suffixIcon;

  const InputForm(
      {Key? key,
        required this.hintText,
        this.prefixIcon,
        this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      width: 331.w,
      child: TextFormField(
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: Color(0xff9A9A9A),
              fontSize: 15.sp,
              fontFamily: 'RobotoRegular'
            ),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            fillColor: const Color(0xffF0F0F0),
            filled: true,
            focusColor: const Color(0xffF0F0F0),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffF0F0F0)),
                ),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffF0F0F0)),)),
      ),
    );
  }
}