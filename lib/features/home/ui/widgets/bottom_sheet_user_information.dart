import 'package:contact/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import '../../../../core/theming/app_text_styles.dart';

class BottomSheetUserInformation extends StatelessWidget {
  final String name;
  final String email;
  final String phone;

  const BottomSheetUserInformation({
    super.key,
    required this.name,
    required this.email,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name.isEmpty ? 'User Name' : name,
            style: AppTextStyles.font16OffWhiteMedium),
        Divider(
          color: AppColors.offWhite,
        ),
        Text(email.isEmpty ? 'Email' : email,
            style: AppTextStyles.font16OffWhiteMedium),
        Divider(
          color: AppColors.offWhite,
        ),
        Text(phone.isEmpty ? 'Phone' : phone,
            style: AppTextStyles.font16OffWhiteMedium),
      ],
    );
  }
}
