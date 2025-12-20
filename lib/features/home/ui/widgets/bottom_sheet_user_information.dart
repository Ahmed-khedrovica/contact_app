import 'dart:io';

import 'package:contact/core/helpers/spacing.dart';
import 'package:contact/features/home/ui/widgets/user_image.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';

class BottomSheetUserInformation extends StatefulWidget {
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
  State<BottomSheetUserInformation> createState() =>
      _BottomSheetUserInformationState();
}

class _BottomSheetUserInformationState
    extends State<BottomSheetUserInformation> {
  File? profileImage;
  final ImagePicker _picker = ImagePicker();

  Future<void> pickImage() async {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Wrap(
          children: [
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: const Text('Gallery'),
              onTap: () async {
                Navigator.pop(context);
                final XFile? image = await _picker.pickImage(
                  source: ImageSource.gallery,
                );
                if (image != null) {
                  setState(() {
                    profileImage = File(image.path);
                  });
                }
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_camera),
              title: const Text('Camera'),
              onTap: () async {
                Navigator.pop(context);
                final XFile? image = await _picker.pickImage(
                  source: ImageSource.camera,
                );
                if (image != null) {
                  setState(() {
                    profileImage = File(image.path);
                  });
                }
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: pickImage,
            child: UserImage(),
        ),
        horizontalSpace(16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.name.isEmpty ? 'User Name' : widget.name,
                style: AppTextStyles.font16OffWhiteMedium,
              ),
              Divider(color: AppColors.offWhite),
              Text(
                widget.email.isEmpty ? 'example@email.com' : widget.email,
                style: AppTextStyles.font16OffWhiteMedium,
              ),
              Divider(color: AppColors.offWhite),
              Text(
                widget.phone.isEmpty ? '+200000000000' : widget.phone,
                style: AppTextStyles.font16OffWhiteMedium,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
