import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/controller/banner_images.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 200.h,
      margin: EdgeInsets.only(top: 16.h),
      child: Stack(
        children: [
          InkWell(
            onTap: () {
              print(currentIndex);
            },
            child: CarouselSlider(
              items: BannerImages().bannerImages
                  .map(
                    (item) => Image.asset(
                  item['image'],
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
                ),
              )
                  .toList(),
              carouselController: carouselController,
              options: CarouselOptions(
                scrollPhysics: const BouncingScrollPhysics(),
                autoPlay: true,
                aspectRatio: 2,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: BannerImages().bannerImages.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => carouselController.animateToPage(entry.key),
                  child: Container(
                    width: currentIndex == entry.key ? 17 : 7,
                    height: 7.0,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 3.0,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: currentIndex == entry.key
                            ? CustomColor.primaryColor
                            : CustomColor.backgroundColor),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

