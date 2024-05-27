// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nexteon_test/utils/color_constant.dart';
import 'package:nexteon_test/widget/appbarweb_widget.dart';

class IpadScreen extends StatelessWidget {
  const IpadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  width: 852,
                  height: double.infinity,
                  color: ColorConstant.loginBlue,
                ),
                Center(
                    child: Container(
                        height: 400, width: 400, child: AppBarwebWidget())),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Container(
                width: 60,
                color: ColorConstant.loginwhite,
                //color: Colors.blueGrey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 90),
                      child: Text(
                        "Welcome Back! Glad to \n see you again",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 28),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 400,
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Email',
                              fillColor: ColorConstant.textwhite,
                              filled: true,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "Password",
                              fillColor: ColorConstant.textwhite,
                              filled: true,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 250),
                            child: Text(
                              "Forgot Password",
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: ColorConstant.loginBlue),
                              child: Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
