import 'package:chat_practice/routes/route_name.dart';
import 'package:chat_practice/theme/app_colors.dart';
import 'package:chat_practice/theme/app_images.dart';
import 'package:chat_practice/theme/app_padding.dart';
import 'package:chat_practice/theme/app_textstyle.dart';
import 'package:chat_practice/utils/utility.dart';
import 'package:flutter/material.dart';

class ChatListScreen extends StatefulWidget {
  const ChatListScreen({super.key});

  @override
  State<ChatListScreen> createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.blackColor,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: AppPadding.horizontal20,
                child: Image.asset(
                  AppImages.appLogo,
                  scale: 4,
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),

              /// List search box
              TextFormField(
                cursorColor: AppColors.greyColor,
                decoration: InputDecoration(
                    hintText: 'Search...',
                    hintStyle: AppTextStyle.grey_15_500,
                    filled: true,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: AppColors.greyColor,
                      size: 28,
                    ),
                    fillColor: AppColors.darkGreyBackground,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    )),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),

              /// Users list
              Expanded(
                child: ListView.builder(
                    itemCount: 15,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        onTap: () {
                          Navigator.pushNamed(context, Routes.chatScreen);
                        },
                        minLeadingWidth: 0,
                        contentPadding: EdgeInsets.zero,
                        minVerticalPadding: 20,
                        leading: const CircleAvatar(
                          backgroundColor: AppColors.darkGreyBackground,
                          radius: 30,
                        ),
                        title: const Text(
                          'Shubham Jha',
                          style: AppTextStyle.white_16_700,
                        ),
                        subtitle: const Text(
                          'Can you please send something i want from you',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyle.grey_15_500,
                        ),
                        trailing: Column(
                          children: [
                            const Text(
                              '11:32 am',
                              style: AppTextStyle.grey_12_400,
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  gradient: AppUtils.buttonGradient,
                                  shape: BoxShape.circle),
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  '657',
                                  style: AppTextStyle.dark_10_500,
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
