import 'package:contact/core/helpers/spacing.dart';
import 'package:contact/core/theming/app_colors.dart';
import 'package:contact/core/theming/app_text_styles.dart';
import 'package:contact/features/home/ui/widgets/add_user_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 26),
              child: Image.asset('assets/images/logo.png', scale: 6),
            ),
            Center(child:
            Lottie.asset('assets/animations/empty_list.json',),
            ),
            verticalSpace(40),
            Center(
              child: Text(
                'There is No Contacts Added Here',
                style: AppTextStyles.font20OffWhiteMedium,
              ),
            ),
            verticalSpace(220),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  backgroundColor: AppColors.offWhite,
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(24),
                        ),
                      ),
                      builder: (context) {
                        return const AddUserBottomSheet();
                      },
                    );
                  },
                  child: Icon(Icons.add, color: AppColors.mainDarkBlue),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
