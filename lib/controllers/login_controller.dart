import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:squick/core/colors.dart';

class LoginController extends GetxController {
  RxBool isChecked = false.obs;

  @override
  void onInit() {
    checkbox();
    super.onInit();
  }

  checkbox() {
    isChecked.value = !isChecked.value;
  }
}
