import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

import '../../../matule_uikit.dart';

abstract class BaseButtonWidget extends StatelessWidget {
  final CustomTheme theme;
  final double width;
  final double height;
  final BorderRadius borderRadius;
  final EdgeInsets padding;
  final Function()? onTap;
  final Widget? child;

  const BaseButtonWidget({
    super.key,
    required this.theme,
    required this.width,
    required this.height,
    required this.onTap,
    required this.child,
    required this.borderRadius,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    var theme = CustomTheme.of(context);
    return SizedBox(
      width: width,
      height: height,
      child: FilledButton(
        onPressed: onTap,
        style: FilledButton.styleFrom(
          padding: padding,
          backgroundColor: theme.palette.inputBackground,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: child,
      ),
    );
  }
}

abstract class BaseStateButtonWidget extends StatelessWidget {
  final CustomTheme theme;
  final Function()? onTap;
  final Color backgroundColor;
  final Color? disabledBackgroundColor;
  final Color strokeColor;
  final String text;
  final Color textColor;

  const BaseStateButtonWidget({
    super.key,
    required this.theme,
    required this.onTap,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
    required this.disabledBackgroundColor,
    required this.strokeColor,
  });

  double? get _width;

  double get _height;

  TextStyle get _textStyle;

  EdgeInsets get _padding;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _width,
      height: _height,
      child: FilledButton(
        onPressed: onTap,
        style: FilledButton.styleFrom(
          padding: _padding,
          backgroundColor: backgroundColor,
          disabledBackgroundColor: disabledBackgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
            side: BorderSide(width: 1.r, color: strokeColor),
          ),
        ),
        child: Text(
          text,
          style: _textStyle.copyWith(color: textColor),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}

class BubbleButtonWidget extends BaseButtonWidget {
  const BubbleButtonWidget({
    super.key,
    required super.theme,
    required super.width,
    required super.height,
    required super.onTap,
    required super.child,
    required super.borderRadius,
    required super.padding,
  });

  BubbleButtonWidget.back({
    super.key,
    required super.theme,
    required super.onTap,
  }) : super(
         width: 32.r,
         height: 32.r,
         padding: EdgeInsets.all(6.r),
         borderRadius: BorderRadius.circular(8.r),
         child: SvgPicture.asset(
           "packages/matule_uikit/assets/icons/chevron-down.svg",
           width: 20.r,
           height: 20.r,
         ),
       );

  BubbleButtonWidget.filter({
    super.key,
    required super.theme,
    required super.onTap,
  }) : super(
         width: 48.r,
         height: 48.r,
         padding: EdgeInsets.all(14.r),
         borderRadius: BorderRadius.circular(10.r),
         child: SvgPicture.asset(
           "packages/matule_uikit/assets/icons/filter.svg",
           width: 20.r,
           height: 20.r,
         ),
       );

  static Story get story => Story(
    name: "BubbleButton",
    builder: (BuildContext context) {
      var theme = CustomTheme.of(context);
      onTap() {
        debugPrint("BubbleButton pressed!");
      }

      int type = context.knobs.options(
        label: "Type",
        initial: 0,
        options: [
          Option(label: "Back", value: 0),
          Option(label: "Filter", value: 1),
        ],
      );
      switch (type) {
        case 0:
          return BubbleButtonWidget.back(theme: theme, onTap: onTap);
        case _:
          return BubbleButtonWidget.filter(theme: theme, onTap: onTap);
      }
    },
  );
}

class BigButtonWidget extends BaseStateButtonWidget {
  const BigButtonWidget({
    super.key,
    required super.theme,
    required super.onTap,
    required super.text,
    required super.textColor,
    required super.backgroundColor,
    required super.disabledBackgroundColor,
    required super.strokeColor,
  });

  @override
  double get _height => 56.h;

  @override
  double get _width => 335.w;

  @override
  TextStyle get _textStyle => theme.styles.title3Semibold17;

  @override
  EdgeInsets get _padding =>
      EdgeInsets.symmetric(vertical: 16.h, horizontal: 13.5.w);

  BigButtonWidget.filled({
    super.key,
    required super.theme,
    required super.onTap,
    required super.text,
  }) : super(
         textColor: theme.palette.whiteOld,
         backgroundColor: theme.palette.accent,
         disabledBackgroundColor: theme.palette.accentInactiveOld,
         strokeColor: Colors.transparent,
       );

  BigButtonWidget.outlined({
    super.key,
    required super.theme,
    required super.onTap,
    required super.text,
  }) : super(
         textColor: theme.palette.accent,
         backgroundColor: Colors.transparent,
         disabledBackgroundColor: Colors.transparent,
         strokeColor: theme.palette.accent,
       );

  BigButtonWidget.simple({
    super.key,
    required super.theme,
    required super.onTap,
    required super.text,
  }) : super(
         textColor: theme.palette.black,
         backgroundColor: theme.palette.inputBackgroundOld,
         disabledBackgroundColor: Colors.transparent,
         strokeColor: Colors.transparent,
       );

  static Story get story => Story(
    name: "BigButton",
    builder: (BuildContext context) {
      var theme = CustomTheme.of(context);
      onTap() {
        debugPrint("BigButton pressed!");
      }

      String text = context.knobs.text(label: "Text", initial: "Подтвердить");
      int type = context.knobs.options(
        label: "Type",
        initial: 0,
        options: [
          Option(label: "Filled", value: 0),
          Option(label: "Outlined", value: 1),
          Option(label: "Simple", value: 2),
        ],
      );
      bool active = context.knobs.boolean(label: "Active", initial: true);
      switch (type) {
        case 0:
          return BigButtonWidget.filled(
            theme: theme,
            onTap: active ? onTap : null,
            text: text,
          );
        case 1:
          return BigButtonWidget.outlined(
            theme: theme,
            onTap: active ? onTap : null,
            text: text,
          );
        case _:
          return BigButtonWidget.simple(
            theme: theme,
            onTap: active ? onTap : null,
            text: text,
          );
      }
    },
  );
}

class SmallButtonWidget extends BigButtonWidget {
  const SmallButtonWidget({
    super.key,
    required super.theme,
    required super.onTap,
    required super.text,
    required super.textColor,
    required super.backgroundColor,
    required super.disabledBackgroundColor,
    required super.strokeColor,
  });

  @override
  double get _height => 40.h;

  @override
  double get _width => 96.w;

  @override
  TextStyle get _textStyle => theme.styles.captionSemibold14;

  @override
  EdgeInsets get _padding =>
      EdgeInsets.symmetric(vertical: 10.h, horizontal: 13.5.w);

  SmallButtonWidget.filled({
    super.key,
    required super.theme,
    required super.onTap,
    required super.text,
  }) : super.filled();

  SmallButtonWidget.outlined({
    super.key,
    required super.theme,
    required super.onTap,
    required super.text,
  }) : super.outlined();

  SmallButtonWidget.simple({
    super.key,
    required super.theme,
    required super.onTap,
    required super.text,
  }) : super.simple();

  static Story get story => Story(
    name: "SmallButton",
    builder: (BuildContext context) {
      var theme = CustomTheme.of(context);
      onTap() {
        debugPrint("SmallButton pressed!");
      }

      String text = context.knobs.text(label: "Text", initial: "Добавить");
      int type = context.knobs.options(
        label: "Type",
        initial: 0,
        options: [
          Option(label: "Filled", value: 0),
          Option(label: "Outlined", value: 1),
          Option(label: "Simple", value: 2),
        ],
      );
      bool active = context.knobs.boolean(label: "Active", initial: true);
      switch (type) {
        case 0:
          return SmallButtonWidget.filled(
            theme: theme,
            onTap: active ? onTap : null,
            text: text,
          );
        case 1:
          return SmallButtonWidget.outlined(
            theme: theme,
            onTap: active ? onTap : null,
            text: text,
          );
        case _:
          return SmallButtonWidget.simple(
            theme: theme,
            onTap: active ? onTap : null,
            text: text,
          );
      }
    },
  );
}

class ChipsButtonWidget extends BaseStateButtonWidget {
  final bool active;

  ChipsButtonWidget({
    super.key,
    required super.theme,
    required this.active,
    required super.onTap,
    required super.text,
  }) : super(
         textColor: active
             ? theme.palette.whiteOld
             : theme.palette.descriptionOld,
         backgroundColor: active
             ? theme.palette.accentOld
             : theme.palette.inputBackgroundOld,
         disabledBackgroundColor: null,
         strokeColor: Colors.transparent,
       );

  @override
  double get _height => 48.h;

  @override
  double? get _width => null;

  @override
  EdgeInsets get _padding =>
      EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h);

  @override
  TextStyle get _textStyle => theme.styles.textMedium15Old;

  static Story get story => Story(
    name: "ChipsButton",
    builder: (BuildContext context) {
      var theme = CustomTheme.of(context);
      onTap() {
        debugPrint("ChipsButton pressed!");
      }

      String text = context.knobs.text(label: "Text", initial: "Добавить");
      bool active = context.knobs.boolean(label: "Active", initial: true);
      return ChipsButtonWidget(
        theme: theme,
        active: active,
        onTap: onTap,
        text: text,
      );
    },
  );
}
