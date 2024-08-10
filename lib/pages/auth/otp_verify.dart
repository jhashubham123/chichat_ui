import 'package:chat_practice/routes/route_name.dart';
import 'package:chat_practice/theme/app_colors.dart';
import 'package:chat_practice/theme/app_images.dart';
import 'package:chat_practice/theme/app_padding.dart';
import 'package:chat_practice/theme/app_textstyle.dart';
import 'package:chat_practice/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OtpVerifyScreen extends StatefulWidget {
  const OtpVerifyScreen({super.key});

  @override
  State<OtpVerifyScreen> createState() => _OtpVerifyScreenState();
}

class _OtpVerifyScreenState extends State<OtpVerifyScreen> {
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
                const Spacer(),
                Padding(
                    padding: AppPadding.horizontal60,
                    child: Image.asset(AppImages.appLogo)),
                const Spacer(),

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
                          'Verification',
                          style: AppTextStyle.dark_20_700,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Column(
                          children: [
                            const Text(
                              'OTP has been sent to your mobile number',
                              style: AppTextStyle.grey_14_500,
                              textAlign: TextAlign.center,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  '(xxx) xxx - xxxx',
                                  style: AppTextStyle.grey_14_500,
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  width: size.width * 0.02,
                                ),
                                GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Icon(
                                      Icons.edit,
                                      color: AppColors.blackColor,
                                      size: 20,
                                    ))
                              ],
                            )
                          ],
                        ),
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
                            hintText: 'xxxx',
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
                      Padding(
                        padding: AppPadding.horizontal20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Icon(Icons.timer_outlined),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            const Text(
                              '00:00',
                              style: AppTextStyle.dark_14_500,
                            ),
                          ],
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
                            Navigator.pushNamed(context, Routes.chatListScreen);
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
