// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nexteon_test/utils/color_constant.dart';
import 'package:nexteon_test/utils/imageContsant.dart';
import 'package:nexteon_test/widget/appbar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 80,
            color: ColorConstant.loginBlue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppBarWidget(),
                Center(
                  child: Row(
                    children: [
                      Text(
                        "Home",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      SizedBox(width: 55),
                      Text(
                        "Migraine Tracker",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      SizedBox(width: 55),
                      Text(
                        "Podcast",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      SizedBox(width: 55),
                      Text(
                        "Emergency Kit",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      SizedBox(width: 55),
                      Text(
                        "Breathe & Balance",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Image.asset(ImageContsant.appFrogLogo)
              ],
            ),
          ),
          SizedBox(
            height: 45,
          ),
          Stack(
            children: [
              Container(
                width: 400,
                height: 400,
                // color: Colors.amber,
                color: ColorConstant.textwhite,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Container(
                  width: 380,
                  height: 90,
                  decoration: BoxDecoration(color: ColorConstant.homecyan),
                  //color: Colors.black),
                  child: Center(
                    child: Text(
                      "Emergency kit",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 120, left: 10),
              //   child: Container(
              //     height: 250,
              //     width: 380,
              //     color: Colors.brown,
              //   ),
              // )
            ],
          ),
        ],
      ),
    );
  }
}
