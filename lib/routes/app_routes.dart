import 'package:flutter/material.dart';
import 'package:ratchanon_s_application3/presentation/login_screen/login_screen.dart';
import 'package:ratchanon_s_application3/presentation/main_screen/main_screen.dart';
import 'package:ratchanon_s_application3/presentation/add_queue_screen/add_queue_screen.dart';
import 'package:ratchanon_s_application3/presentation/select_vans_screen/select_vans_screen.dart';
import 'package:ratchanon_s_application3/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String mainScreen = '/main_screen';

  static const String addQueueScreen = '/add_queue_screen';

  static const String selectVansScreen = '/select_vans_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    loginScreen: (context) => LoginScreen(),
    mainScreen: (context) => MainScreen(),
    addQueueScreen: (context) => AddQueueScreen(),
    selectVansScreen: (context) => SelectVansScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
