// Назначение файла: Экран для редактирования профиля
// Дата создания: 27.02.25
// Автор: participant1 (Титовец Д. В.)

import "package:flutter/material.dart";
import "package:get/get.dart";

import "package:wms_test/presentation/theme/extension.dart";

import "package:wms_test/presentation/widgets/custom_title_text.dart";
import "package:wms_test/presentation/widgets/custom_text_field.dart";
import "package:wms_test/presentation/widgets/custom_filled_button.dart";
import "package:wms_test/presentation/widgets/custom_accent_text.dart";

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: context.palette.background,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22, vertical: 44),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTitleText(text: "Редактирование"),
                Column(spacing: 22, children: [
                  CustomTextField(hint: "Фамилия"),
                  CustomTextField(hint: "Имя"),
                  CustomTextField(hint: "Отчество"),
                  CustomTextField(hint: "Почта")
                ]),
                Column(spacing: 22, children: [
                  CustomFilledButton(
                      text: "Сохранить",
                      callback: () {
                        Get.back();
                      }),
                  CustomAccentText(
                      text: "Отменить",
                      callback: () {
                        Get.back();
                      })
                ])
              ]),
        ));
  }
}
