// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nexteon_test/screens/login/create/responsive/ipad.dart';
import 'package:nexteon_test/screens/login/create/responsive/iphone.dart';
import 'package:nexteon_test/screens/login/create/responsive/mac.dart';
import 'package:nexteon_test/screens/login/create/responsive_layout.dart';

class ResponsiveScreens extends StatefulWidget {
  const ResponsiveScreens({super.key});

  @override
  State<ResponsiveScreens> createState() => _ResponsiveScreensState();
}

class _ResponsiveScreensState extends State<ResponsiveScreens> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileBody: IphoneScreen(),
      tabBody: IpadScreen(),
      desktopBody: MacScreen(),
    );
  }
}
