// Назначение файла: Начальный экран приложения, вход в существующий аккаунт
// Дата создания: 26.02.25
// Автор: participant1 (Титовец Д. В.)

import "package:google_fonts/google_fonts.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

import "package:wms_test/presentation/theme/extension.dart";

import "package:wms_test/presentation/widgets/custom_accent_text.dart";
import "package:wms_test/presentation/widgets/custom_title_text.dart";
import "package:wms_test/presentation/widgets/custom_text_field.dart";
import "package:wms_test/presentation/widgets/custom_filled_button.dart";

import "package:wms_test/presentation/pages/forgot_password.dart";
import "package:wms_test/presentation/pages/home.dart";
import "package:wms_test/presentation/pages/signup.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  CustomTitleText(text: "Вход"),
                  Column(spacing: 22, children: [
                    CustomTextField(hint: "Почта"),
                    CustomTextField(hint: "Пароль", private: true),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomAccentText(
                            text: "Забыли пароль?",
                            callback: () {
                              Get.to(ForgotPasswordPage());
                            }),
                      ],
                    )
                  ]),
                  Column(spacing: 22, children: [
                    Text("0.8.6 | 0.4.13",
                        style: GoogleFonts.inter(
                            textStyle: TextStyle(
                                color: context.palette.hint,
                                fontSize: 18,
                                fontWeight: FontWeight.w400))),
                    CustomFilledButton(
                        text: "Войти",
                        callback: () {
                          Get.off(HomePage());
                        }),
                    CustomAccentText(
                        text: "Создать новый аккаунт",
                        callback: () {
                          Get.to(SignUpPage());
                        })
                  ])
                ])));
  }
}
