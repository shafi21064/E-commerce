import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../category_package.dart';

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
