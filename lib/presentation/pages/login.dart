import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:matule/main.dart';
import 'package:matule/presentation/pages/signup.dart';
import 'package:matule/presentation/pages/tabbar.dart';
import 'package:matule/presentation/widgets/custom_header.dart';
import 'package:matule/presentation/widgets/utils.dart';
import 'package:matule_uikit/matule_uikit.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
              title: "Добро пожаловать!",
              description: "Войдите, чтобы пользоваться функциями приложения",
            ),
            Padding(
              padding: EdgeInsets.only(top: 64.h),
              child: InputWidget(
                label: "Вход по E-mail",
                hint: "example@mail.com",
                error: "",
                controller: emailController,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 14.h),
              child: InputWidget(
                label: "Пароль",
                hint: "",
                error: "",
                controller: passwordController,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 14.h),
              child: BigButtonWidget.filled(
                theme: theme,
                onTap: () {
                  useCase.login(
                    emailController.text,
                    passwordController.text,
                    (obj) {
                      Get.offAll(TabbarPage(defaultIndex: 3));
                    },
                    (e) {
                      showError(eC.cE(e));
                    },
                  );
                },
                text: "Далее",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.h),
              child: GestureDetector(
                onTap: () {
                  Get.to(SignupPage());
                },
                child: Text(
                  "Зарегистрироваться",
                  style: theme.styles.textRegular15.copyWith(
                    color: theme.palette.accent,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 59.h),
              child: Text(
                "Или войдите с помощью",
                style: theme.styles.textRegular15.copyWith(
                  color: theme.palette.placeholderOld,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
