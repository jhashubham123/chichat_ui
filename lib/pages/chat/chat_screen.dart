import 'package:chat_practice/theme/app_colors.dart';
import 'package:chat_practice/theme/app_textstyle.dart';
import 'package:chat_practice/utils/utility.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController sendMessageController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    sendMessageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
        child: Scaffold(
          appBar: AppBar(
            iconTheme: const IconThemeData(color: AppColors.whiteColor),
            backgroundColor: AppColors.blackColor,
            leadingWidth: 20,
            title: Row(
              children: [
                const CircleAvatar(
                  radius: 23,
                ),
                SizedBox(
                  width: size.width * 0.02,
                ),
                const Text(
                  'Shubham Jha',
                  style: AppTextStyle.white_18_500,
                )
              ],
            ),
          ),
          backgroundColor: AppColors.blackColor,
          body: SafeArea(
              child: Column(
            children: [
              /// Chat details list
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: ListView.builder(
                      reverse: true,
                      itemCount: chatDetail.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        var reversedItems = chatDetail.reversed.toList()[index];
                        return Align(
                          alignment: chatDetail[index].sender == true
                              ? Alignment.centerRight
                              : Alignment.centerLeft,
                          child: Container(
                            margin: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: AppColors.darkGreyBackground,
                                borderRadius: chatDetail[index].sender == true
                                    ? const BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      )
                                    : const BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      )),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 8),
                              child: Text(
                                reversedItems.message,
                                style: AppTextStyle.white_16_400,
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ),

              /// Sender box field
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: sendMessageController,
                      cursorColor: AppColors.greyColor,
                      decoration: InputDecoration(
                          hintText: 'Message',
                          hintStyle: AppTextStyle.grey_15_500,
                          filled: true,
                          prefixIcon: const Icon(
                            Icons.mood,
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
                  ),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        ChatDetail newChat = ChatDetail(
                            message: sendMessageController.text,
                            messageTime: DateTime.now().toString(),
                            sender: true);
                        chatDetail.add(newChat);
                        print(newChat.sender);
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: AppUtils.buttonGradient),
                      child: const Icon(
                        Icons.send,
                        color: AppColors.blackColor,
                        size: 28,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
        ));
  }
}

class ChatDetail {
  ChatDetail({
    required this.message,
    required this.messageTime,
    required this.sender,
  });
  final bool sender;
  final String message;
  final String messageTime;
}

List<ChatDetail> chatDetail = <ChatDetail>[
  ChatDetail(message: 'Hi', messageTime: '11:02 am', sender: true),
  ChatDetail(message: 'Hello', messageTime: '11:03 am', sender: false),
  ChatDetail(message: 'Hows you', messageTime: '11:03 am', sender: true),
  ChatDetail(message: 'fine tu bta', messageTime: '11:04 am', sender: false),
  ChatDetail(
      message: 'badiya bhai kya hi batau ab',
      messageTime: '11:05 am',
      sender: true),
  ChatDetail(
      message: 'pta ni bc kya chal ra h',
      messageTime: '11:07 am',
      sender: true),
  ChatDetail(
      message: 'Wo to thik hai but hua kya',
      messageTime: '11:02 am',
      sender: false),
  ChatDetail(
      message: 'Wo to thik hai but hua kya',
      messageTime: '11:02 am',
      sender: true),
  ChatDetail(
      message: 'Wo to thik hai but hua kya',
      messageTime: '11:02 am',
      sender: false),
  ChatDetail(
      message: 'Wo to thik hai but hua kya',
      messageTime: '11:02 am',
      sender: true),
  ChatDetail(
      message: 'Wo to thik hai but hua kya',
      messageTime: '11:02 am',
      sender: false),
  ChatDetail(
      message: 'Wo to thik hai but hua kya',
      messageTime: '11:02 am',
      sender: true),
  ChatDetail(
      message: 'Wo to thik hai but hua kya',
      messageTime: '11:02 am',
      sender: false),
  ChatDetail(
      message: 'Wo to thik hai but hua kya',
      messageTime: '11:02 am',
      sender: true),
  ChatDetail(
      message: 'Wo to thik hai but hua kya',
      messageTime: '11:02 am',
      sender: false),
  ChatDetail(
      message: 'Wo to thik hai but hua kya',
      messageTime: '11:02 am',
      sender: true),
  ChatDetail(
      message: 'Wo to thik hai but hua kya',
      messageTime: '11:02 am',
      sender: false),
  ChatDetail(
      message: 'Wo to thik hai but hua kya',
      messageTime: '11:02 am',
      sender: true),
  ChatDetail(
      message: 'Wo to thik hai but hua kya',
      messageTime: '11:02 am',
      sender: false),
];
