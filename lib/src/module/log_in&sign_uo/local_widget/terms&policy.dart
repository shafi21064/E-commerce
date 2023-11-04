import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';

class TermsAndPolicy extends StatefulWidget {
  const TermsAndPolicy({super.key});

  @override
  State<TermsAndPolicy> createState() => _TermsAndPolicyState();
}

class _TermsAndPolicyState extends State<TermsAndPolicy> {
  bool? ischecked = false;
  @override
  Widget build(BuildContext context) {
    return RichText(text: TextSpan(
      text: 'I agree to the ',
      style: TextStyle(
        fontFamily: 'RobotoRegular',
        fontSize: 14.sp,
        color: Color(0xff6E6E6E),
      ),
      children: [
        TextSpan(
          text: 'Privacy Policy ',
          style: TextStyle(
            color: CustomColor.primaryColor
          ),
        ),
        TextSpan(
          text: 'and '
        ),
        TextSpan(
          text: 'terms & \nConditions',
          style: TextStyle(
            decoration: TextDecoration.underline,
          )
        ),
        TextSpan(
          text: ' of Limarket'
        )
      ]
    ));
  }
}
