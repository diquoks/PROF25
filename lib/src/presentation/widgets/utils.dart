import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:matule_uikit/matule_uikit.dart';

class UtilsMaterialWrapper extends StatelessWidget {
  final Widget? widget;

  const UtilsMaterialWrapper({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: (BuildContext context, _) {
        return MaterialApp(
          theme: ThemeData.light().copyWith(
            extensions: [CustomTheme(palette: LightPalette())],
          ),
          debugShowCheckedModeBanner: false,
          home: Builder(
            builder: (context) {
              var theme = CustomTheme.of(context);
              return Scaffold(
                resizeToAvoidBottomInset: false,
                body: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.w,
                    vertical: 48.h,
                  ),
                  child: Center(
                    child:
                        widget ??
                        CircularProgressIndicator(
                          backgroundColor: Colors.transparent,
                          color: theme.palette.accent,
                        ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
