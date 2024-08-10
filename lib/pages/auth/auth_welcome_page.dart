import 'package:chat_practice/routes/route_name.dart';
import 'package:chat_practice/theme/app_colors.dart';
import 'package:chat_practice/theme/app_images.dart';
import 'package:chat_practice/theme/app_padding.dart';
import 'package:chat_practice/theme/app_textstyle.dart';
import 'package:chat_practice/utils/utility.dart';
import 'package:chat_practice/widgets/app_button.dart';
import 'package:flutter/material.dart';

class AuthWelcome extends StatefulWidget {
  const AuthWelcome({super.key});

  @override
  State<AuthWelcome> createState() => _AuthWelcomeState();
}

class _AuthWelcomeState extends State<AuthWelcome> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Spacer(),
            Padding(
              padding: AppPadding.horizontal40,
              child: Center(
                child: Image.asset(
                  AppImages.appLogo,
                ),
              ),
            ),
            const Spacer(),
            AppButton.primaryButton(context,
                buttonTextStyle: AppTextStyle.dark_15_700,
                buttonName: 'Login',
                buttonColor: AppColors.whiteColor, onPressed: () {
              Navigator.pushNamed(context, Routes.authScreen);
            }),
          ],
        ),
      )),
    );
  }
}
