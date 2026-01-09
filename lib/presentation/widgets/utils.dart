import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showError(String e) {
  Get.defaultDialog(title: "Произошла ошибка", content: Text(e));
}
