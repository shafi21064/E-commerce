import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_height.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';
import 'package:internship_project/src/module/home_screen/local_widget/home_tab/details/start_rating.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';


class ReviewsAndRating extends StatelessWidget {
  const ReviewsAndRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      height: 260.h,
      width: MediaQuery
          .sizeOf(context)
          .width,
      color: Colors.white,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: TextMedium(
              text: 'Reviews & Ratings',
              fontSize: 16.sp,
              color: CustomColor.ratingBlue,
            ),
          ),
          SpaceInHeight(height: 25.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  TextMedium(
                      text: '0',
                      fontSize: 40.sp,
                    color: CustomColor.ratingBlue,
                  ),
                  SizedBox(
                    height: 15.h,
                    width: 85.w,
                    child: SmoothStarRating(
                      starCount: 5,
                      rating: 5.00,
                      size: 15,
                      halfFilledIconData: Icons.blur_on,
                      color: CustomColor.primaryColor,
                      //spacing:0.0
                    ),
                  ),
                  SpaceInHeight(height: 7.h),
                  TextMedium(
                      text: '0',
                      fontSize: 16.sp,
                    color: CustomColor.ratingBlue,
                  )
                ],
              ),
             Container(
               height: 124.h,
               width: 1.w,
               color: const Color(0xffA0A0A0),
             ),
              const Column(
                children: [
                  StarRating(
                    rating: 5.00,
                    numberOfStar: '5',
                    numberOfPeople: '10',
                  ),
                  StarRating(
                    rating: 4.00,
                    numberOfStar: '4',
                    numberOfPeople: '5',
                  ),
                  StarRating(
                    rating: 3.00,
                    numberOfStar: '4',
                    numberOfPeople: '5',
                  ),
                  StarRating(
                    rating: 2.00,
                    numberOfStar: '4',
                    numberOfPeople: '5',
                  ),
                  StarRating(
                    rating: 1.00,
                    numberOfStar: '4',
                    numberOfPeople: '5',
                  ),
                ],
              ),
            ],
          ),
          SpaceInHeight(height: 20.h),
          Container(
            height: 1.h,
            width: 372.w,
            color: const Color(0xffA0A0A0),
          ),
          SpaceInHeight(height: 15.h),
          TextMedium(
              text: 'View all or write a review',
              fontSize: 13.sp,
            color: CustomColor.primaryColor,
          )
        ],
      ),
    );
  }
}
