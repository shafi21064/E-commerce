import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/controller/item_provider.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_width.dart';
import 'package:internship_project/src/data/global_widget/text_widget.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_regular.dart';
import 'package:internship_project/src/data/global_widget/wish_icon.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';
import 'package:provider/provider.dart';

class FavoriteItem extends StatelessWidget {
  String itemPic, itemName, itemPrice;
  dynamic onpress;
  bool favorite;
  FavoriteItem({
    super.key,
    this.onpress,
    required this.favorite,
    required this.itemPic,
    required this.itemName,
    required this.itemPrice
  });
  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<ItemProvider>(context);

    return Container(
      //margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
      //padding: EdgeInsets.only(top: 18.h, bottom: 12.h, left: 32.w),
      height: 110.h,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5.r)),
      child: Stack(
        children: [
          Positioned(
            top: 0,
              right: 0,
              child: ClipPath(
                clipper: Customshape(),
                child: InkWell(
                  onTap: onpress,
                  child: Container(
                    padding: EdgeInsets.only(top: 9.3.h, right: 9.3.w),
                    height: 59.48.h,
                    width: 75.69.w,
                    color: Colors.red,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: SizedBox(
                        height: 20.35.h,
                          width: 16.53.w,
                          child: Image.asset('assets/icons/delete.png', color: Colors.white,)),
                    ),
                  ),
                ),
              )
          ),
          Padding(
            padding: EdgeInsets.only(top: 18.h, bottom: 12.h, left: 32.w),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 80.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          image: DecorationImage(
                              image: AssetImage(
                                itemPic,
                              ),
                              //fit: BoxFit.cover
                          )),
                    ),
                    SpaceInWidth(width: 23.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 38.h,
                          width: 171.w,
                          child: TextRegular(
                              text: itemName,
                              fontSize: 16.sp,
                              color: const Color(0xff7E7E7E)),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        TextMedium(
                            text: itemPrice,
                            fontSize: 15.sp,
                            color: CustomColor.primaryColor ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
//
class Customshape extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();
    //path.lineTo(0, height);
    path.lineTo(width, height);
    path.lineTo( width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}