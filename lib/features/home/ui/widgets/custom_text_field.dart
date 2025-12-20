import 'package:flutter/material.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  const CustomTextField({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: AppTextStyles.font16LighterBlueRegular,
      cursorColor: AppColors.lighterBlue,
      decoration: InputDecoration(
        hintText: text,
        hintStyle: AppTextStyles.font16LighterBlueRegular,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: AppColors.offWhite,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: AppColors.offWhite,
          ),
        ),
      ),
    );
  }
}
