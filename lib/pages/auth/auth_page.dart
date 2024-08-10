import 'package:chat_practice/routes/route_name.dart';
import 'package:chat_practice/theme/app_colors.dart';
import 'package:chat_practice/theme/app_images.dart';
import 'package:chat_practice/theme/app_padding.dart';
import 'package:chat_practice/theme/app_textstyle.dart';
import 'package:chat_practice/widgets/app_button.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        backgroundColor: AppColors.blackColor,
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Column(
              children: [
                Spacer(),
                Padding(
                    padding: AppPadding.horizontal60,
                    child: Image.asset(AppImages.appLogo)),
                Spacer(),

                /// Login options container
                Container(
                  decoration: const BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                        child: Text(
                          'Welcome to ChitChat',
                          style: AppTextStyle.dark_20_700,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Text(
                          'By regestring you agree to the terms of data processing and our privacy policy',
                          style: AppTextStyle.grey_14_500,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),

                      /// Continue with google
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Column(
                          children: [
                            loginOptionsButton(context,
                                mediaName: 'Google',
                                mediaImage: AppImages.googleIcon),
                            SizedBox(
                              height: size.height * 0.02,
                            ),

                            /// Continue with facebook
                            loginOptionsButton(context,
                                mediaName: 'FaceBook',
                                mediaImage: AppImages.facebookIcon,
                                scale: 23),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                          ],
                        ),
                      ),

                      /// Continue with mobile ------
                      const Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: AppColors.lightGreyColor,
                              thickness: 1,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'Or continue with phone number',
                              style: AppTextStyle.grey_14_500,
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: AppColors.lightGreyColor,
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),

                      /// Mobile phone textfeild
                      Padding(
                        padding: AppPadding.horizontal20,
                        child: TextFormField(
                          cursorColor: AppColors.greyColor,
                          cursorHeight: 20,
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(20, 12, 20, 12),
                            hintText: '(xxx) xxx - xxxx',
                            hintStyle: AppTextStyle.grey_14_500,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                  color: AppColors.lightGreyColor),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                  color: AppColors.lightGreyColor),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                  color: AppColors.lightGreyColor),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),

                      /// Continue button
                      Padding(
                          padding: AppPadding.horizontal20,
                          child: AppButton.primaryButton(context,
                              buttonName: 'Continue', onPressed: () {
                            Navigator.pushNamed(
                                context, Routes.otpVerifyScreen);
                          })),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget loginOptionsButton(BuildContext context,
    {required String mediaName,
    required String mediaImage,
    double scale = 16}) {
  final size = MediaQuery.of(context).size;
  return Container(
    padding: AppPadding.verticle8,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      border: Border.all(color: AppColors.lightGreyColor),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          mediaImage,
          scale: scale,
        ),
        SizedBox(
          width: size.width * 0.02,
        ),
        Text(
          'Continue with $mediaName',
          style: AppTextStyle.dark_14_500,
        )
      ],
    ),
  );
}
