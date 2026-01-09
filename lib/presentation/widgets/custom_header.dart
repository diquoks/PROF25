import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:matule_uikit/matule_uikit.dart';

class CustomHeader extends StatelessWidget {
  final String title;
  final String description;

  const CustomHeader({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    var theme = CustomTheme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 23.h,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 16.w,
          children: [
            Text("🖐️", style: TextStyle(fontSize: 32.sp)),
            Text(title, style: theme.styles.title1ExtraBold24),
          ],
        ),
        Text(
          description,
          style: theme.styles.textRegular15.copyWith(
            color: theme.palette.blackOld,
          ),
        ),
      ],
    );
  }
}
