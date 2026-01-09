import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:matule/presentation/pages/password.dart';
import 'package:matule_uikit/matule_uikit.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController firstController = TextEditingController();
  final TextEditingController secondController = TextEditingController();
  final TextEditingController lastController = TextEditingController();
  final TextEditingController birthController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var theme = CustomTheme.of(context);
    return Scaffold(
      backgroundColor: theme.palette.whiteOld,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 76.h, right: 20.w, left: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Создание Профиля",
                    style: theme.styles.title1ExtraBold24.copyWith(
                      color: theme.palette.blackOld,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 44.h),
                    child: Text(
                      "Без профиля вы не сможете создавать проекты.",
                      style: theme.styles.captionRegular14.copyWith(
                        color: theme.palette.placeholderOld,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.h),
                    child: Text(
                      "В профиле будут храниться результаты проектов и ваши описания.",
                      style: theme.styles.captionRegular14.copyWith(
                        color: theme.palette.placeholderOld,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 32.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 24.h,
                      children: [
                        InputWidget(
                          label: "",
                          hint: "Имя",
                          error: "",
                          controller: firstController,
                        ),
                        InputWidget(
                          label: "",
                          hint: "Отчество",
                          error: "",
                          controller: secondController,
                        ),
                        InputWidget(
                          label: "",
                          hint: "Фамилия",
                          error: "",
                          controller: lastController,
                        ),
                        InputWidget(
                          label: "",
                          hint: "Дата рождения",
                          error: "",
                          controller: birthController,
                        ),
                        InputWidget(
                          label: "",
                          hint: "Пол",
                          error: "",
                          controller: genderController,
                        ),
                        InputWidget(
                          label: "",
                          hint: "Почта",
                          error: "",
                          controller: emailController,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 68.h, bottom: 32.h),
                    child: BigButtonWidget.filled(
                      theme: theme,
                      onTap: () {
                        Get.to(
                          PasswordPage(
                            first: firstController.text,
                            second: secondController.text,
                            last: lastController.text,
                            birth: birthController.text,
                            gender: genderController.text,
                            email: emailController.text,
                          ),
                        );
                      },
                      text: "Далее",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
