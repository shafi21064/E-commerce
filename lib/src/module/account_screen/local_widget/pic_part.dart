import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../account_package.dart';


class PicturePart extends StatelessWidget {
  const PicturePart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 186.h,
      width: 416.w,
      color: Colors.white,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 85.h,
              width: 85.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                      'https://e1.pxfuel.com/desktop-wallpaper/928/355/desktop-wallpaper-sm-on-twitter-random-people.jpg'
                  ),
                  fit: BoxFit.fill
                )
              ),
            ),
            TextBold(
                text: 'Jonathon Smith',
                color: const Color(0xff404040),
                fontSize: 16.sp
            ),
            TextRegular(text: '018373636733',
                color: const Color(0xff9F9F9F),
                fontSize: 16.sp)
          ],
        ),
      ),
    );
  }
}
