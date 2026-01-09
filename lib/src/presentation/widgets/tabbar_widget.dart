import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

import '../../../matule_uikit.dart';

class TabbarWidget extends StatelessWidget {
  final Function(int) onTap;
  final int currentIndex;

  const TabbarWidget({
    super.key,
    required this.onTap,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    var theme = CustomTheme.of(context);
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      elevation: 0,
      iconSize: 32.r,
      type: BottomNavigationBarType.fixed,
      backgroundColor: theme.palette.whiteOld,
      selectedLabelStyle: theme.styles.caption2Regular12,
      unselectedLabelStyle: theme.styles.caption2Regular12,
      selectedItemColor: theme.palette.accentOld,
      unselectedItemColor: theme.palette.inputIconOld,
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(
          label: "Главная",
          icon: SvgPicture.asset(
            "packages/matule_uikit/assets/icons/tabbar-home.svg",
            width: 32.r,
            height: 32.r,
            colorFilter: ColorFilter.mode(
              (currentIndex == 0)
                  ? theme.palette.accentOld
                  : theme.palette.inputIconOld,
              BlendMode.srcATop,
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: "Каталог",
          icon: SvgPicture.asset(
            "packages/matule_uikit/assets/icons/tabbar-catalog.svg",
            width: 32.r,
            height: 32.r,
            colorFilter: ColorFilter.mode(
              (currentIndex == 1)
                  ? theme.palette.accentOld
                  : theme.palette.inputIconOld,
              BlendMode.srcATop,
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: "Проекты",
          icon: Padding(
            padding: EdgeInsets.all(4.r),
            child: SvgPicture.asset(
              "packages/matule_uikit/assets/icons/tabbar-projects.svg",
              width: 24.r,
              height: 24.r,
              colorFilter: ColorFilter.mode(
                (currentIndex == 2)
                    ? theme.palette.accentOld
                    : theme.palette.inputIconOld,
                BlendMode.srcATop,
              ),
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: "Профиль",
          icon: SvgPicture.asset(
            "packages/matule_uikit/assets/icons/tabbar-profile.svg",
            width: 32.r,
            height: 32.r,
            colorFilter: ColorFilter.mode(
              (currentIndex == 3)
                  ? theme.palette.accentOld
                  : theme.palette.inputIconOld,
              BlendMode.srcATop,
            ),
          ),
        ),
      ],
    );
  }

  static Story get story => Story(
    name: "Tabbar",
    builder: (BuildContext context) {
      int currentIndex = context.knobs.sliderInt(
        label: "CurrentIndex",
        initial: 0,
        min: 0,
        max: 3,
      );
      return TabbarWidget(
        onTap: (int index) {
          debugPrint(index.toString());
        },
        currentIndex: currentIndex,
      );
    },
  );
}
