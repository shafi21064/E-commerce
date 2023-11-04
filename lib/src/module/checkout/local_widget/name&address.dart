import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_regular.dart';
import 'package:internship_project/src/module/checkout/local_widget/edit_button.dart';
import 'package:internship_project/src/module/checkout/local_widget/edit_name&address.dart';

class NameAndAddress extends StatelessWidget {
  const NameAndAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextRegular(text: 'Ibrahim Khalil',
                  color: const Color(0xff525252),
                  fontSize: 16.sp),
              TextRegular(text: 'No address  provide',
                  color: const Color(0xff777777),
                  fontSize: 14.sp)
            ],
          ),
          EditButton(
            onTap: (){
              showModalBottomSheet<void>(
                showDragHandle: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(17.r))),
                context: context,
                builder: (BuildContext context) {
                  return const EditNameAndAddress();
                },
              );
            },
          )
        ],
      ),
    );
  }
}
