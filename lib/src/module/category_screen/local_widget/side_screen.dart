import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/controller/category_item.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_height.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_regular.dart';
import 'package:internship_project/src/module/category_screen/local_widget/categories_list.dart';
import 'package:provider/provider.dart';

class SideScreen extends StatefulWidget {

  const SideScreen({super.key,});

  @override
  State<SideScreen> createState() => _SideScreenState();
}

class _SideScreenState extends State<SideScreen> {
  // @override
  // void initState() {
  //   final categoryProvider = Provider.of<CategoryItem>(context);
  //   setState(() {
  //     categoryProvider.pageIndex;
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    final categoryProvider = Provider.of<CategoryItem>(context);
    return Container(
      padding: EdgeInsets.only(right: 10.w),
      color: const Color(0xffF8F8F8),
      width: 250.w,
      child: Column(
        children: [
          SizedBox(
            height: 34.h,
            width: MediaQuery.sizeOf(context).width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextRegular(
                  text: categoryProvider.categoryItem[categoryProvider.pageIndex]['name'],
                  fontSize: 14.sp,
                  color: const Color(0xff797979),
                ),
                SpaceInHeight(height: 12.5.h),
                Container(
                  width: 250.w,
                  height: .5.h,
                  color: const Color(0xff707070),
                ),

              ],
            ),
          ),
          SpaceInHeight(height: 17.h),
          SizedBox(
            height: 570.h,
            child: ListView.builder(
              itemCount: categoryProvider.categoryItem[categoryProvider.pageIndex]['subcategory'].length,
                itemBuilder: (context, index){
                return Card(
                  color: const Color(0xffF8F8F8),
                  child: ExpansionTile(
                    title: TextRegular(
                      text: categoryProvider.categoryItem[categoryProvider.pageIndex]['subcategory'][index]['subname'],
                      fontSize: 14.sp,
                      color: Color(0xff797979),
                    ),
                    children: [
                      SizedBox(
                        height: 95.h,
                        width: 250.w,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount:categoryProvider.categoryItem[categoryProvider.pageIndex]['subcategory'][index]['productlist'].length,
                            itemBuilder: (context, index){
                            return Card(
                              color: Colors.white,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(14.w, 10.h, 14.w, 8.h),
                                alignment: Alignment.center,
                                //height: 80.h,
                                width: 80.w,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 50.h,
                                      width: 50.w,
                                      child: Image.asset(categoryProvider.categoryItem[categoryProvider.pageIndex]['subcategory'][index]['productlist'][index]['image']),
                                    ),
                                    SpaceInHeight(height: 5.h),
                                    TextRegular(
                                        text: categoryProvider.categoryItem[categoryProvider.pageIndex]['subcategory'][index]['productlist'][index]['pname'],
                                        color: Color(0xff797979),
                                        fontSize: 8.sp)
                                  ],
                                ),
                              ),
                            );
                            }),
                      )
                    ],
                  ),
                );
                }),
          )
        ],
      ),
    );
  }
}
