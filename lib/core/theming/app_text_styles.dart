import 'package:contact/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

abstract final class AppTextStyles {
  static final font20OffWhiteMedium = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.offWhite,
  );

  static final font14DarkBlueRegular = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.mainDarkBlue,
  );

  static final font14OffWhiteMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.offWhite,
  );

  static final font16OffWhiteMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.offWhite,
  );

  static final font20DarkBlueRegular = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColors.mainDarkBlue,
  );

  static final font16LighterBlueRegular = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.lighterBlue,
  );
}