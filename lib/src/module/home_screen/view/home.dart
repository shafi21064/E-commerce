import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/search_bar.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';
import 'package:internship_project/src/module/home_screen/local_widget/custom_indicator.dart';
import 'package:internship_project/src/module/home_screen/view/computer&office_tab.dart';
import 'package:internship_project/src/module/home_screen/view/home_tab/home_tab.dart';
import 'package:internship_project/src/module/home_screen/view/phone_accessories_tab.dart';
import 'package:internship_project/src/module/home_screen/view/toys_tab.dart';
import 'gaming_pc_tab.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    TabController _tabcontroller = TabController(length: 5, vsync: this);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.h),
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.only(top: 5.h),
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        height: 15.h,
                        width: 24.w,
                        child: Image.asset('assets/icons/menu.png')),
                    const CustomSearchBar(),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 5.h),
                  height: 30.h,
                  width: MediaQuery.of(context).size.width,
                  child: TabBar(
                      controller: _tabcontroller,
                      indicatorColor: CustomColor.primaryColor,
                      labelColor: CustomColor.primaryColor,
                      unselectedLabelColor: CustomColor.kingBlackText,
                      indicatorWeight: 4.h,
                      isScrollable: true,
                      labelPadding: const EdgeInsets.only(right: 15),
                      indicator: CustomRectangularIndicator(),
                      tabs:  [
                        Tab(
                          child: TextMedium(
                              text: 'Home',
                              fontSize: 12.sp
                          ),),
                        Tab(
                          child: TextMedium(
                              text: 'Computer & Office',
                              fontSize: 12.sp),
                        ),
                        Tab(
                          child: TextMedium(
                              text: 'Phone Accessories',
                              fontSize: 12.sp),
                        ),Tab(
                          child: TextMedium(
                              text: 'Gaming PC',
                              fontSize: 12.sp),
                        ),
                        Tab(
                          child: TextMedium(
                              text: 'Toys',
                              fontSize: 12.sp),
                        )
                      ]),
                ),
              ],
            ),
          ),
        )
        ,),
      body: TabBarView(
        controller: _tabcontroller,
        children: const [
          HomeTab(),
          ComputerAndOfficeTAb(),
          PhoneAccessoriesTab(),
          GamingPcTab(),
          ToysTab()
        ],
      ),
    );
  }
}

