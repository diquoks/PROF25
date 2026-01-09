// Назначение файла: Инициализация приложения и вызов начального экрана
// Дата создания: 25.02.25
// Автор: participant1 (Титовец Д. В.)

import "package:flutter/material.dart";
import "package:get/get.dart";

import "package:wms_test/presentation/theme/palette.dart";
import "package:wms_test/presentation/theme/extension.dart";

import "package:wms_test/presentation/pages/login.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light()
            .copyWith(extensions: [CustomThemeExtension(LightPalette())]),
        darkTheme: ThemeData.dark()
            .copyWith(extensions: [CustomThemeExtension(DarkPalette())]),
        home: LoginPage());
  }
}
