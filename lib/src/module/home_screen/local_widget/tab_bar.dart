import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';
import 'package:internship_project/src/module/home_screen/view/computer&office_tab.dart';
import 'package:internship_project/src/module/home_screen/view/gaming_pc_tab.dart';
import 'package:internship_project/src/module/home_screen/view/home_tab.dart';
import 'package:internship_project/src/module/home_screen/view/phone_accessories_tab.dart';
import 'package:internship_project/src/module/home_screen/view/toys_tab.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController _tabcontroller = TabController(length: 5, vsync: this);
    return  Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 15.h),
          height: 30.h,
          width: MediaQuery.of(context).size.width,
          child: TabBar(
              controller: _tabcontroller,
            indicatorColor: CustomColor.primaryColor,
              labelColor: CustomColor.primaryColor,
              unselectedLabelColor: CustomColor.kingBlackText,
              indicatorWeight: 4.h,
              isScrollable: true,
              labelPadding: EdgeInsets.only(right: 15),
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
        Container(
          margin: const EdgeInsets.only(top: 5),
          height: 260.h,
          width: MediaQuery.sizeOf(context).width,
          decoration: const BoxDecoration(
            color: Colors.white,

          ),
          child: TabBarView(
            controller: _tabcontroller,
            children: const [
              HomeTab(),
              ComputerAndOfficeTAb(),
              PhoneAccessoriesTab(),
              GamingPcTab(),
              ToysTab()
            ],
          ),
        )
      ],
    );
  }
}

class CustomRectangularIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CustomPainter(this, onChanged);
  }
}

class _CustomPainter extends BoxPainter {
  final CustomRectangularIndicator decoration;

  _CustomPainter(this.decoration, VoidCallback? onChanged)
      : super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Paint paint = Paint();
    paint.color = CustomColor.primaryColor; // Set the color of your custom indicator
    paint.style = PaintingStyle.fill;

    final double indicatorHeight = 4.h; // Height of the rectangular indicator
    final double indicatorWidth = configuration.size!.width / 3; // Width of the rectangular indicator
    final double indicatorRadius = 2.r; // Radius of the corners

    final Rect rect = Rect.fromPoints(
      offset.translate((configuration.size!.width - indicatorWidth) / 3, configuration.size!.height - indicatorHeight),
      offset.translate((configuration.size!.width + indicatorWidth) / 3, configuration.size!.height),
    );
    final RRect rRect = RRect.fromRectAndRadius(rect, Radius.circular(indicatorRadius));
    canvas.drawRRect(rRect, paint);
  }
}





