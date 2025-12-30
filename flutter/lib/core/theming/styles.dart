import 'package:flutter/material.dart';
import 'package:food_delivery/core/theming/colors.dart';
import 'package:food_delivery/core/theming/font_weight_helper.dart';

class AppTextStyles {
  static const TextStyle font24ExtraBoldBlack = TextStyle(
    fontSize: 24,
    fontWeight: FontWeightHelper.extraBold,
    color: ColorsManager.textPrimary,
  );
  static const TextStyle font16RegularGray = TextStyle(
    fontSize: 16,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.textSecondary,
  );
}
