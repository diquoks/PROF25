// Назначение файла: Ввод почты при сбросе пароля
// Дата создания: 26.02.25
// Автор: participant1 (Титовец Д. В.)

import "package:flutter/material.dart";
import "package:get/get.dart";

import "package:wms_test/presentation/theme/extension.dart";

import "package:wms_test/presentation/widgets/custom_accent_text.dart";
import "package:wms_test/presentation/widgets/custom_filled_button.dart";
import "package:wms_test/presentation/widgets/custom_text_field.dart";
import "package:wms_test/presentation/widgets/custom_title_text.dart";

import "package:wms_test/presentation/pages/login.dart";

class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({super.key});

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: context.palette.background,
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 44),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomTitleText(text: "Восстановить пароль"),
                  Column(spacing: 22, children: [
                    CustomTextField(hint: "Пароль", private: true),
                    CustomTextField(hint: "Повторите пароль", private: true)
                  ]),
                  Column(spacing: 22, children: [
                    CustomFilledButton(
                        text: "Установить новый пароль",
                        callback: () {
                          Get.off(LoginPage());
                        }),
                    CustomAccentText(
                        text: "Я вспомнил пароль",
                        callback: () {
                          Get.back();
                        })
                  ])
                ])));
  }
}
