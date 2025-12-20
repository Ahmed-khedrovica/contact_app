import 'package:flutter/material.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';

class BottomSheetElevatedButton extends StatelessWidget {
  const BottomSheetElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.offWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {
          // logic
        },
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Text('Enter user', style: AppTextStyles.font20DarkBlueRegular),
        ),
      ),
    );
  }
}
