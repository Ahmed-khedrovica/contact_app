import 'package:contact/core/theming/app_text_styles.dart';
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
            Center(
                child: Lottie.asset(
                    'assets/animations/empty_list.json'
                ),
            ),
            Center(
              child: Text(
                'There is No Contacts Added Here',
                style: AppTextStyles.font20OffWhiteMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
