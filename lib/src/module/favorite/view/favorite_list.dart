import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../favorite_package.dart';


class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backgroundColor,
      body:
        SafeArea(
          child:  Column(
            children: [
              CustomAppBar(
                appBarTitle: 'WishList',
                onTap: ()=> Navigator.pop(context),
              ),
              SpaceInHeight(height: 17.h),
              Expanded(
                  child: ListView(
                      children: const [
                      FavoriteItemList()
                      ])),
            ],
          ),
        )
    );
  }
}