import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import '../account_package.dart';


class DetailsPart extends StatelessWidget {
  const DetailsPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(35.w, 18.h, 25.5.w, 33.h),
      height: 326.h,
      width: 416.w,
      color: Colors.white,
      child: Column(
        children: [
          DetailsCard(
            onTap: (){
              pushNewScreen(
                context,
                screen: const OrderDetails(),
                withNavBar: false, // OPTIONAL VALUE. True by default.
                pageTransitionAnimation: PageTransitionAnimation.cupertino,
              );
            },
            imagePath: 'assets/icons/home_icon.png',
              cardText: 'Order Details',
              textColor: CustomColor.primaryColor
          ),
          SpaceInHeight(height: 25.h),
          DetailsCard(
              onTap: (){
                  showModalBottomSheet<void>(
                    showDragHandle: true,
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(17.r))),
                    context: context,
                    builder: (BuildContext context) {
                      return const EditProfile();
                    },
                  );
                },

            imagePath: 'assets/icons/profile.png',
              cardText: 'Edit Profile',
          ),
          SpaceInHeight(height: 25.h),
          DetailsCard(
              onTap: (){
                showModalBottomSheet<void>(
                  showDragHandle: true,
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(17.r))),
                  context: context,
                  builder: (BuildContext context) {
                    return const Address();
                  },
                );
              },
            imagePath: 'assets/icons/address.png',
              cardText: 'Address',
          ),
          SpaceInHeight(height: 25.h),
          DetailsCard(
              onTap: (){},
            imagePath: 'assets/icons/translate.png',
              cardText: 'Change Language',
          )
        ],
      ),
    );
  }
}
