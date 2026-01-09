import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:matule/main.dart';
import 'package:matule/presentation/pages/tabbar.dart';
import 'package:matule/presentation/widgets/custom_header.dart';
import 'package:matule_uikit/matule_uikit.dart';

class PasswordPage extends StatefulWidget {
  final String first;
  final String second;
  final String last;
  final String birth;
  final String gender;
  final String email;

  const PasswordPage({
    super.key,
    required this.first,
    required this.second,
    required this.last,
    required this.birth,
    required this.gender,
    required this.email,
  });

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController repeatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var theme = CustomTheme.of(context);
    return Scaffold(
      backgroundColor: theme.palette.whiteOld,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.only(top: 103.h, right: 20.w, left: 20.w),
        child: Column(
          children: [
            CustomHeader(
              title: "Создание пароля",
              description: "Введите новый пароль",
            ),
            Padding(
              padding: EdgeInsets.only(top: 90.h),
              child: Column(
                spacing: 12.h,
                children: [
                  InputWidget(
                    label: "Новый Пароль",
                    hint: "",
                    error: "",
                    controller: passwordController,
                  ),
                  InputWidget(
                    label: "Повторите пароль",
                    hint: "",
                    error: "",
                    controller: repeatController,
                  ),
                  BigButtonWidget.filled(
                    theme: theme,
                    onTap: () {
                      useCase.signup(
                        widget.email,
                        passwordController.text,
                        repeatController.text,
                        (obj) {
                          useCase.login(widget.email, passwordController.text, (
                            obj,
                          ) {
                            useCase.editProfile(
                              useCase.getAuth()!.record.id,
                              widget.email,
                              true,
                              widget.first,
                              widget.last,
                              widget.second,
                              widget.birth,
                              widget.gender,
                              (obj) {
                                Get.offAll(TabbarPage(defaultIndex: 3));
                              },
                              eC.cE,
                            );
                          }, eC.cE);
                        },
                        eC.cE,
                      );
                    },
                    text: "Далее",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
