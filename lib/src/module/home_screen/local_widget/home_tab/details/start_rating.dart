import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_height.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';


class StarRating extends StatelessWidget {
  final  double rating;
  final String numberOfStar, numberOfPeople;
  const StarRating({
    super.key,
    required this.rating,
    required this.numberOfStar,
    required this.numberOfPeople
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 15.h,
          width: 85.w,
          child: SmoothStarRating(
          starCount: 5,
          rating: rating,
          size: 15,
          //halfFilledIconData: Icons.blur_on,
          borderColor: const Color(0xffA0A0A0),
          color: CustomColor.primaryColor,
          //spacing:0.0
          ),
        ),
        SpaceInHeight(height: 17.h),
        TextMedium(
            text: '$numberOfStar($numberOfPeople)',
            fontSize: 16.sp,
          color: const Color(0xffA0A0A0),
        ),
      ],
    );
  }
}
