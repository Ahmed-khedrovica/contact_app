import 'package:contact/core/theming/app_colors.dart';
import 'package:contact/features/home/ui/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ContactApp());
}

class ContactApp extends StatelessWidget {
  const ContactApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.mainDarkBlue),
      routes: {
        'homeScreen' : (context) => HomeScreen(),
      },
      initialRoute: 'homeScreen',
    );
  }
}
