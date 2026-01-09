// Назначение файла: Экран с регистрацией нового аккаунта
// Дата создания: 26.02.25
// Автор: participant1 (Титовец Д. В.)

import "package:flutter/material.dart";
import "package:get/get.dart";

import "package:wms_test/presentation/theme/extension.dart";

import "package:wms_test/presentation/widgets/custom_accent_text.dart";
import "package:wms_test/presentation/widgets/custom_title_text.dart";
import "package:wms_test/presentation/widgets/custom_text_field.dart";
import "package:wms_test/presentation/widgets/custom_filled_button.dart";

import "package:wms_test/presentation/pages/login.dart";

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                  CustomTitleText(text: "Создать аккаунт"),
                  Column(spacing: 22, children: [
                    CustomTextField(hint: "Фамилия"),
                    CustomTextField(hint: "Имя"),
                    CustomTextField(hint: "Отчество"),
                    CustomTextField(hint: "Почта"),
                    CustomTextField(hint: "Пароль", private: true),
                    CustomTextField(hint: "Повторите пароль", private: true)
                  ]),
                  Column(spacing: 22, children: [
                    CustomFilledButton(
                        text: "Зарегистрироваться",
                        callback: () {
                          Get.off(LoginPage());
                        }),
                    CustomAccentText(
                        text: "У меня уже есть аккаунт",
                        callback: () {
                          Get.back();
                        })
                  ])
                ])));
  }
}
