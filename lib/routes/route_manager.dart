import 'package:chat_practice/pages/auth/auth_page.dart';
import 'package:chat_practice/pages/auth/auth_welcome_page.dart';
import 'package:chat_practice/pages/auth/otp_verify.dart';
import 'package:chat_practice/pages/chat/chat_list.dart';
import 'package:chat_practice/pages/chat/chat_screen.dart';
import 'package:chat_practice/routes/route_name.dart';
import 'package:flutter/material.dart';

class RouteManager {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.authScreen:
        return generateRouteWithoutAnimation(
            widgetScreen: const AuthScreen(), settings: settings);

      case Routes.authWelcomeScreen:
        return generateRouteWithoutAnimation(
            widgetScreen: const AuthWelcome(), settings: settings);

      case Routes.otpVerifyScreen:
        return generateRouteWithoutAnimation(
            widgetScreen: const OtpVerifyScreen(), settings: settings);

      case Routes.chatListScreen:
        return generateRouteWithoutAnimation(
            widgetScreen: const ChatListScreen(), settings: settings);

      case Routes.chatScreen:
        return generateRouteWithoutAnimation(
            widgetScreen: const ChatScreen(), settings: settings);

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> generateRouteWithoutAnimation(
      {required Widget widgetScreen, RouteSettings? settings}) {
    return PageRouteBuilder(
        pageBuilder: (context, anm1, anm2) => widgetScreen,
        reverseTransitionDuration: Duration.zero,
        transitionDuration: Duration.zero,
        settings: settings);
  }

  static Route<dynamic> _errorRoute() {
    return PageRouteBuilder(pageBuilder: (context, anm1, anm2) {
      return const Scaffold(
        body: Text('Something went wrong'),
      );
    });
  }
}
