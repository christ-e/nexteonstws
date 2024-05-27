import 'package:flutter/material.dart';
import 'package:nexteon_test/utils/imageContsant.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: Image.asset(ImageContsant.appLogo),
    );
  }
}
