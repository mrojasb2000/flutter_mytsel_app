import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var checkBox = false.obs;
  TextEditingController phoneController = TextEditingController();

  @override
  void onClose() {
    phoneController.dispose();
    super.onClose();
  }
}
