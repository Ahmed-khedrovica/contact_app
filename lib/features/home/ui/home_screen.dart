import 'package:contact/features/home/ui/widgets/add_user_bottom_sheet.dart';
import 'package:contact/features/home/ui/widgets/user_card.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_text_styles.dart';
import '../data/modals/user_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<UserModel> users = [];

  void addUser(UserModel user) {
    setState(() {
      users.add(user);
    });
  }

  void deleteUser(int index) {
    setState(() {
      users.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: users.length == 100
          ? null
          : FloatingActionButton(
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
                  builder: (_) => AddUserBottomSheet(onAddUser: addUser),
                );
              },
              child: Icon(Icons.add, color: AppColors.mainDarkBlue),
            ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 26),
              child: Image.asset('assets/images/logo.png', scale: 6),
            ),
            Expanded(
              child: users.isEmpty
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Lottie.asset(
                            'assets/animations/empty_list.json',
                          ),
                        ),
                        verticalSpace(40),
                        Text(
                          'There is No Contacts Added Here',
                          style: AppTextStyles.font20OffWhiteMedium,
                        ),
                      ],
                    )
                  : Padding(
                      padding: const EdgeInsets.all(16),
                      child: GridView.builder(
                        itemCount: users.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12,
                              childAspectRatio: 0.75,
                            ),
                        itemBuilder: (context, index) {
                          return UserCard(
                            user: users[index],
                            onDelete: () => deleteUser(index),
                          );
                        },
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
