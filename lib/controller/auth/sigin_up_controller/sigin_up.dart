import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class AbstractSignUpController extends GetxController {
 void humanRace();
}

class SignUpController extends AbstractSignUpController {
  SignUpController();
  late TextEditingController username;
  @override
  void onInit() {
    super.onInit();
    username = TextEditingController();
  }

  @override
  void dispose() {
    username.dispose();
    
    super.dispose();
  }
  
  @override
  void humanRace() {
  
  }
  }

  