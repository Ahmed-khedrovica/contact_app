import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../data/modals/user_model.dart';
import 'bottom_sheet_elevated_button.dart';
import 'bottom_sheet_user_information.dart';
import 'custom_text_field.dart';
import 'user_image_picker.dart';

class AddUserBottomSheet extends StatefulWidget {
  final Function(UserModel) onAddUser;

  const AddUserBottomSheet({
    super.key,
    required this.onAddUser,
  });

  @override
  State<AddUserBottomSheet> createState() => _AddUserBottomSheetState();
}

class _AddUserBottomSheetState extends State<AddUserBottomSheet> {
  File? selectedImage;

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 24,
        bottom: MediaQuery.of(context).viewInsets.bottom + 16,
      ),
      decoration: BoxDecoration(
        color: AppColors.mainDarkBlue,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              UserImagePicker(),
              horizontalSpace(12),
              BottomSheetUserInformation(
                name: nameController.text,
                email: emailController.text,
                phone: phoneController.text,
              ),
            ],
          ),
          verticalSpace(12),
          CustomTextField(
            hint: 'Enter User Name',
            controller: nameController,
            onChanged: (_) => setState(() {}),
          ),
          verticalSpace(12),
          CustomTextField(
            hint: 'Enter User Email',
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            onChanged: (_) => setState(() {}),
          ),
          verticalSpace(12),
          CustomTextField(
            hint: 'Enter User Phone',
            controller: phoneController,
            keyboardType: TextInputType.phone,
            onChanged: (_) => setState(() {}),
          ),
          verticalSpace(16),
          BottomSheetElevatedButton(
            onPressed: () {
              widget.onAddUser(
                UserModel(
                  name: nameController.text.isNotEmpty
                      ? nameController.text
                      : 'No Name',
                  email: emailController.text.isNotEmpty
                      ? emailController.text
                      : 'No Email',
                  phone: phoneController.text.isNotEmpty
                      ? phoneController.text
                      : 'No Phone',
                  image: selectedImage,
                ),
              );
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    super.dispose();
  }
}
