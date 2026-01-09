import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

import '../../../matule_uikit.dart';

class SmallHeaderWidget extends StatelessWidget {
  final CustomTheme theme;
  final String title;
  final Function onTap;

  const SmallHeaderWidget({
    super.key,
    required this.theme,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 335.w,
      height: 48.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: theme.styles.title2Semibold20.copyWith(
                  color: theme.palette.blackOld,
                ),
              ),
              SizedBox(width: 99.w),
              GestureDetector(
                onTap: () => onTap(),
                child: Padding(
                  padding: EdgeInsets.all(4.r),
                  child: SvgPicture.asset(
                    "packages/matule_uikit/assets/icons/header_plus.svg",
                    width: 20.r,
                    height: 20.r,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 1.sw, height: 1.h),
        ],
      ),
    );
  }

  static Story get story => Story(
    name: "SmallHeader",
    builder: (BuildContext context) {
      var theme = CustomTheme.of(context);
      String title = context.knobs.text(label: "Title", initial: "Проекты");
      return SmallHeaderWidget(
        theme: theme,
        title: title,
        onTap: () {
          debugPrint("SmallHeader pressed!");
        },
      );
    },
  );
}
