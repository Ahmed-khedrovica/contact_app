import 'package:flutter/material.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../data/modals/user_model.dart';

class UserCard extends StatelessWidget {
  final UserModel user;
  final VoidCallback onDelete;

  const UserCard({
    super.key,
    required this.user,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.offWhite,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          user.image != null
              ? Image.file(
            user.image!,
            height: 100,
            width: double.infinity,
            fit: BoxFit.cover,
          )
              : Image.network(
            'https://th.bing.com/th/id/OIP.Y41kEBYU7XS5AombXcCpTgHaHa?w=162&h=180&c=7&r=0&o=7&dpr=1.4&pid=1.7&rm=3', // صورة افتراضية
            width: double.infinity,
            height: 120,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                verticalSpace(71),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      user.name,
                      style: AppTextStyles.font14DarkBlueRegular,
                    ),
                  ),
                ),
                verticalSpace(10),
                Row(
                  children: [
                    Icon(Icons.email, size: 18, color: AppColors.mainDarkBlue),
                    horizontalSpace(6),
                    Expanded(
                      child: Text(
                        user.email,
                        style: AppTextStyles.font14DarkBlueRegular,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                verticalSpace(6),
                Row(
                  children: [
                    Icon(Icons.phone, size: 18, color: AppColors.mainDarkBlue),
                    horizontalSpace(6),
                    Text(
                      user.phone,
                      style: AppTextStyles.font14DarkBlueRegular,
                    ),
                  ],
                ),
                verticalSpace(12),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: onDelete,
                    icon: Icon(Icons.delete, color: AppColors.white),
                    label: Text('Delete', style: AppTextStyles.font16OffWhiteMedium),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
