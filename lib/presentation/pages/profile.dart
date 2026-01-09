import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:matule/main.dart';
import 'package:matule_uikit/matule_uikit.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var theme = CustomTheme.of(context);
    return Scaffold(
      backgroundColor: theme.palette.whiteOld,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.only(top: 76.h, right: 20.w, left: 20.w),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  useCase.getAuth()!.record.firstName!,
                  style: theme.styles.title1ExtraBold24,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.h),
              child: Row(
                children: [
                  Text(
                    useCase.getAuth()!.record.email!,
                    style: theme.styles.textRegular15.copyWith(
                      color: theme.palette.blackOld,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 328.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 24.h,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Политика конфиденциальности",
                      style: theme.styles.textMedium15Old.copyWith(
                        color: theme.palette.placeholderOld,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Пользовательское соглашение",
                      style: theme.styles.textMedium15Old.copyWith(
                        color: theme.palette.placeholderOld,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Выход",
                      style: theme.styles.textMedium15Old.copyWith(
                        color: theme.palette.errorOld,
                      ),
                    ),
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
