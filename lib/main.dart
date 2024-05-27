import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nexteon_test/widget/go_roter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Nexteon',
      // initialRoute: AppRoutes.login,
      initialRoute: AppRoutes.login,
      getPages: AppRoutes.pages,
      debugShowCheckedModeBanner: false,
    );
  }
}
