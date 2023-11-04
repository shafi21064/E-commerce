import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditButton extends StatelessWidget {
  final dynamic onTap;
  const EditButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 31.h,
        width: 31.w,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: const Color(0xffDBDBDB)),
            color: const Color(0xffEAEAEA)
        ),
        child: const Icon(Icons.edit, size: 15),
      ),
    );
  }
}
