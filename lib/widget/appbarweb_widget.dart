import 'package:flutter/material.dart';
import 'package:nexteon_test/utils/imageContsant.dart';

class AppBarwebWidget extends StatelessWidget {
  const AppBarwebWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 396,
      height: 580,
      child: Image.asset(ImageContsant.appLogo),
      //child: Image.asset("assets/image/Frame 205 (1).png"),
    );
  }
}
