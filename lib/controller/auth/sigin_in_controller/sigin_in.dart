import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectsport/core/constant/approutes.dart';
import 'package:projectsport/view/screen/auth/sign_up.dart';

abstract class AbstractSignInController extends GetxController {
  signUp();
  forgetPassword();
  login();
}

class SignInController extends AbstractSignInController {
  SignInController();
  late TextEditingController username;
  @override
  void onInit() {
    super.onInit();
    username = TextEditingController();
  }

  @override
  void dispose() {
    username.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  forgetPassword() {
    throw UnimplementedError();
  }

  @override
  login() {
    throw UnimplementedError();
  }

  @override
  signUp() async {
   
    await Get.toNamed(AppRoute.signUp,);
    // transition: Transition.circularReveal,
    // duration: const Duration(milliseconds: 1000));
    throw UnimplementedError();
  }
}
