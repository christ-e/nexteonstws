import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nexteon_test/apiServices/apiServices.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  var accessToken = ''.obs;
  var isLoading = false.obs;

  getToken() async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    isLoading.value = true;
    print('Fetching token for email: ${emailController.text}');
    var data =
        await ApiService().login(emailController.text, passwordController.text);
    if (data != null) {
      accessToken.value = data;
      print('Received Access Token: ${accessToken.value}');
      storeData(accessToken.value);
      Get.toNamed("/create"); //navigation
    } else {
      SnackBar(content: Text("Login Failed"));
      print('Failed to retrieve access token');
    }
    isLoading.value = false;
  }

  storeData(String tokenData) async {
    final sharedPref = await SharedPreferences.getInstance();
    await sharedPref.setString("accessToken", tokenData);
    print('Stored Access Token: $tokenData');
  }

  // Logout
  logOut() async {
    final sharedPref = await SharedPreferences.getInstance();
    await sharedPref.remove("accessToken");
    accessToken.value = '';
    print('Logged out and removed access token');
    Get.toNamed(
        "/homescreen"); // Ensure you have a route named "/login" in your app
  }
}
