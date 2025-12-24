import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/theming/app_colors.dart';

class UserImagePicker extends StatefulWidget {
  const UserImagePicker({super.key});

  @override
  State<UserImagePicker> createState() => _UserImagePickerState();
}

class _UserImagePickerState extends State<UserImagePicker> {
  File? selectedImage;

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final picked = await picker.pickImage(source: ImageSource.gallery);

    if (picked != null) {
      setState(() {
        selectedImage = File(picked.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pickImage,
      child: Container(
        height: 120,
        width: 120,
        decoration: BoxDecoration(
          color: AppColors.mainDarkBlue,
          image: selectedImage != null
              ? DecorationImage(
            image: FileImage(selectedImage!),
            fit: BoxFit.cover,
          )
              : null,
        ),
        child: selectedImage == null
            ? Lottie.asset('assets/animations/image_picker.json')
            : null,
      ),
    );
  }
}
