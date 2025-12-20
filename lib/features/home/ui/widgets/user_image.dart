import 'dart:io';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/theming/app_colors.dart';

class UserImage extends StatelessWidget {
  final File? profileImage;

  const UserImage({super.key, this.profileImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(color: AppColors.offWhite),
        borderRadius: BorderRadius.circular(16),
        image: profileImage != null
            ? DecorationImage(
                image: FileImage(profileImage!),
                fit: BoxFit.cover,
              )
            : null,
      ),
      child: profileImage == null
          ? Lottie.asset('assets/animations/image_picker.json')
          : null,
    );
  }
}
