import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/controller/category_item.dart';
import 'package:internship_project/src/module/category_screen/local_widget/catagories_card.dart';
import 'package:provider/provider.dart';

class CategoriesList extends StatefulWidget {
  const CategoriesList({super.key,});

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  @override
  Widget build(BuildContext context) {
    final categoryProvider = Provider.of<CategoryItem>(context);
    return SizedBox(
      height:700.h,
      width: 125.w,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: categoryProvider.categoryItem.length,
            itemBuilder: (context, index){
            return CategoriesCard(
              onTap: () {
                setState(() {
                  categoryProvider.pageIndex = index;
                  print(categoryProvider.pageIndex);
                });
              },
              categoryName: categoryProvider.categoryItem[index]['name'],
              categoryImage: categoryProvider.categoryItem[index]['image'],
            );
            }
        ),
    );
  }
}
