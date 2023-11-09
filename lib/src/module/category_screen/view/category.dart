import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/controller/category_item.dart';
import 'package:internship_project/src/data/global_widget/custom_app_bar.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_width.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';
import 'package:internship_project/src/module/category_screen/local_widget/categories_list.dart';
import 'package:internship_project/src/module/category_screen/local_widget/side_screen.dart';
import 'package:provider/provider.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    final categoryProvider = Provider.of<CategoryItem>(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              CustomAppBar(
                  appBarTitle: 'Categories',
                  onTap: (){}
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   const CategoriesList(),
                  SpaceInWidth(width: 19.5.w),
                  SideScreen()
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}
