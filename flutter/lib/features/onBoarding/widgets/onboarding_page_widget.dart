import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/core/helpers/spacing.dart';
import 'package:food_delivery/core/theming/styles.dart';
import 'package:food_delivery/features/onBoarding/models/onbaording_page_model.dart';

class OnBoardingPageWidget extends StatelessWidget {
  final OnbaordingPageModel pageModel;
  const OnBoardingPageWidget({super.key, required this.pageModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Image
        Container(
          height: 300.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(pageModel.imageAsset),
              fit: BoxFit.cover,
            ),
          ),
        ),
        verticalSpace(40.h),
        // Title
        Text(
          pageModel.title,
          style: AppTextStyles.font24ExtraBoldBlack,
          textAlign: TextAlign.center,
        ),
        verticalSpace(16.h),

        // Description
        Text(
          pageModel.description,
          style: AppTextStyles.font16RegularGray,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
