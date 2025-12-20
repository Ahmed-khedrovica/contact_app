import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import 'bottom_sheet_elevated_button.dart';
import 'bottom_sheet_user_information.dart';
import 'custom_text_field.dart';

class AddUserBottomSheet extends StatefulWidget {
  const AddUserBottomSheet({super.key});

  @override
  State<AddUserBottomSheet> createState() => _AddUserBottomSheetState();
}

class _AddUserBottomSheetState extends State<AddUserBottomSheet> {
  String userName = '';
  String userEmail = '';
  String userPhone = '';

  @override
  Widget build(BuildContext context) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.mainDarkBlue,
          ),
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
            top: 24,
            bottom: MediaQuery.of(context).viewInsets.bottom + 16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BottomSheetUserInformation(
                name: userName,
                email: userEmail,
                phone: userPhone,
              ),
              verticalSpace(12),
              CustomTextField(
                hint: 'Enter User Name',
                onChanged: (value) {
                  setState(() {
                    userName = value;
                  });
                },
              ),
              verticalSpace(12),
              CustomTextField(
                hint: 'Enter User Email',
                onChanged: (value) {
                  setState(() {
                    userEmail = value;
                  });
                },
              ),
              verticalSpace(12),
              CustomTextField(
                hint: 'Enter User Phone',
                onChanged: (value) {
                  setState(() {
                    userPhone = value;
                  });
                },
              ),
              verticalSpace(12),
              BottomSheetElevatedButton(),
            ],
          ),
        );
  }
}
