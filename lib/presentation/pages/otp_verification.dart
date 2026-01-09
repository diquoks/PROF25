// Назначение файла: Ввод почты при сбросе пароля
// Дата создания: 26.02.25
// Автор: participant1 (Титовец Д. В.)

import "package:flutter/material.dart";
import "package:pinput/pinput.dart";
import "package:get/get.dart";

import "package:wms_test/presentation/theme/extension.dart";

import "package:wms_test/presentation/widgets/custom_title_text.dart";
import "package:wms_test/presentation/widgets/custom_filled_button.dart";
import "package:wms_test/presentation/widgets/custom_accent_text.dart";

import "package:wms_test/presentation/pages/new_password.dart";

class OTPVerificationPage extends StatefulWidget {
  const OTPVerificationPage({super.key});

  @override
  State<OTPVerificationPage> createState() => _OTPVerificationPageState();
}

class _OTPVerificationPageState extends State<OTPVerificationPage> {
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
                  CustomTitleText(text: "Введите код из письма"),
                  Column(spacing: 28, children: [
                    Pinput(
                      length: 6,
                      showCursor: false,
                      separatorBuilder: (index) => SizedBox(width: 4),
                      defaultPinTheme: PinTheme(
                          width: 60,
                          height: 100,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: context.palette.text, width: 4),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32)))),
                      focusedPinTheme: PinTheme(
                          width: 60,
                          height: 100,
                          textStyle: TextStyle(
                              color: context.palette.text,
                              fontSize: 32,
                              fontWeight: FontWeight.w500),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: context.palette.accent, width: 4),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32)))),
                      submittedPinTheme: PinTheme(
                          width: 60,
                          height: 100,
                          textStyle: TextStyle(
                              color: context.palette.text,
                              fontSize: 32,
                              fontWeight: FontWeight.w500),
                          decoration: BoxDecoration(
                              color: context.palette.accentDark,
                              border: Border.all(
                                  color: context.palette.accent, width: 4),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32)))),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomAccentText(
                            text: "Повторно отправить код", callback: () {}),
                      ],
                    )
                  ]),
                  Column(spacing: 22, children: [
                    CustomFilledButton(
                        text: "Проверить код",
                        callback: () {
                          Get.off(NewPasswordPage());
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
