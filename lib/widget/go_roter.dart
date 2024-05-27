// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';
import 'package:nexteon_test/screens/homescreen/create/mac_homescreen.dart';
import 'package:nexteon_test/screens/login/view.dart';

class AppRoutes {
  static const login = '/login';
  static const homescreen = '/homescreen';

  static final pages = [
    GetPage(name: login, page: () => ResponsiveScreens()),
    GetPage(name: homescreen, page: () => HomeScreen()),
    // GetPage(name: create, page: () => CreateScreen()),
  ];
}
