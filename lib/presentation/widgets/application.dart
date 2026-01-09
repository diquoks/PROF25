import 'package:flutter/material.dart';
import "package:flutter_screenutil/flutter_screenutil.dart";
import 'package:get/get.dart';
import 'package:matule/presentation/pages/login.dart';
import 'package:matule_uikit/matule_uikit.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: (BuildContext context, _) {
        return GetMaterialApp(
          theme: ThemeData.light().copyWith(
            extensions: [CustomTheme(palette: LightPalette())],
          ),
          debugShowCheckedModeBanner: false,
          home: LoginPage(),
        );
      },
    );
  }
}
