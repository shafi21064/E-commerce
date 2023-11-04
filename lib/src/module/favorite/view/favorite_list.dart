import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/custom_app_bar.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_height.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';
import 'package:internship_project/src/module/favorite/local_widget/favorite_item_list.dart';

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