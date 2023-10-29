import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_height.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';
import 'package:internship_project/src/module/skip_screen/local_widget/skip_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FirstSkipScreen extends StatefulWidget {
  const FirstSkipScreen({super.key});

  @override
  State<FirstSkipScreen> createState() => _FirstSkipScreenState();
}

class _FirstSkipScreenState extends State<FirstSkipScreen> {
  int activePage = 0;
  final pages = [
    const SkipScreenWidget(
        titleImage: 'assets/images/skip_one.png',
        titleText: 'Gaming Collection',
        bottomIcon: 'assets/icons/skip_one.png'),
    const SkipScreenWidget(
        titleImage: 'assets/images/skip_two.png',
        titleText: 'G11 Gaming zone',
        bottomIcon: 'assets/icons/skip_two.png'),
    const SkipScreenWidget(
        titleImage: 'assets/images/skip_three.png',
        titleText: 'Home Decoration',
        bottomIcon: 'assets/icons/skip_three.png')
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      height: size.height,
      width: size.width,
      child: Column(
        children: [
          CarouselSlider.builder(
              itemCount: pages.length,
              options: CarouselOptions(
                  height: MediaQuery.sizeOf(context).height,
                  autoPlay: true,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      activePage = index;
                    });
                  }),
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) {
                return pages[itemIndex];
              }),
        ],
      ),
    ));
  }
}
