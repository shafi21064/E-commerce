import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:internship_project/src/module/skip_screen/local_widget/skip_scrren_widget.dart';

class FirstSkipScreen extends StatefulWidget {
  const FirstSkipScreen({super.key});

  @override
  State<FirstSkipScreen> createState() => _FirstSkipScreenState();
}

class _FirstSkipScreenState extends State<FirstSkipScreen> {
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
        body: Column(
          children: [
            CarouselSlider.builder(
                itemCount: pages.length,
                options: CarouselOptions(
                    height: MediaQuery.sizeOf(context).height,
                    autoPlay: true,
                    viewportFraction: 1,
                ),
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) {
                  return pages[itemIndex];
                }),
          ],
        ));
  }
}
