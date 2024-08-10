import 'package:chat_practice/theme/app_colors.dart';
import 'package:chat_practice/theme/app_textstyle.dart';
import 'package:flutter/material.dart';

class AppButton {
  static Widget primaryButton(
    BuildContext context, {
    required String buttonName,
    required void Function()? onPressed,
    Color buttonColor = AppColors.blackColor,
    TextStyle buttonTextStyle = AppTextStyle.white_15_700,
  }) {
    final size = MediaQuery.of(context).size;
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      minWidth: size.width,
      color: buttonColor,
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13),
        child: Text(buttonName, style: buttonTextStyle),
      ),
    );
  }
}
