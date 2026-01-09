import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

import '../../../matule_uikit.dart';

class BaseCardWidget extends StatelessWidget {
  final CustomTheme theme;
  final double width;
  final double? height;
  final Widget? child;

  const BaseCardWidget({
    super.key,
    required this.theme,
    required this.width,
    required this.height,
    this.child,
  });

  BaseCardWidget.background({super.key, required this.theme})
    : width = 335.w,
      height = 138.h,
      child = null;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: theme.palette.whiteOld,
        border: Border.all(color: theme.palette.cardStrokeOld),
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(color: theme.palette.cardShadow, blurRadius: 20.r),
        ],
      ),
      child: child,
    );
  }

  static Story get story => Story(
    name: "CardBackground",
    builder: (BuildContext context) {
      var theme = CustomTheme.of(context);
      return BaseCardWidget.background(theme: theme);
    },
  );
}

class PrimaryCardWidget extends BaseCardWidget {
  final String label;
  final String category;
  final int price;
  final bool added;
  final Function() onAdd;
  final Function() onRemove;

  PrimaryCardWidget({
    super.key,
    required super.theme,
    required this.label,
    required this.category,
    required this.price,
    required this.added,
    required this.onAdd,
    required this.onRemove,
  }) : super(
         width: 335.w,
         height: null,
         child: Padding(
           padding: EdgeInsets.all(16.r),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             mainAxisSize: MainAxisSize.min,
             crossAxisAlignment: CrossAxisAlignment.start,
             spacing: 16.h,
             children: [
               Row(
                 children: [
                   Flexible(
                     child: Text(
                       label,
                       style: theme.styles.headlineMedium16.copyWith(
                         color: theme.palette.blackOld,
                       ),
                     ),
                   ),
                 ],
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 crossAxisAlignment: CrossAxisAlignment.end,
                 children: [
                   Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(
                         category,
                         style: theme.styles.captionSemibold14.copyWith(
                           color: theme.palette.placeholderOld,
                         ),
                       ),
                       Text(
                         "$price ₽",
                         style: theme.styles.title3Semibold17.copyWith(
                           color: theme.palette.blackOld,
                         ),
                       ),
                     ],
                   ),
                   !added
                       ? SmallButtonWidget.filled(
                           theme: theme,
                           onTap: onAdd,
                           text: "Добавить",
                         )
                       : SmallButtonWidget.outlined(
                           theme: theme,
                           onTap: onRemove,
                           text: "Убрать",
                         ),
                 ],
               ),
             ],
           ),
         ),
       );

  static Story get story => Story(
    name: "PrimaryCard",
    builder: (BuildContext context) {
      var theme = CustomTheme.of(context);
      String label = context.knobs.text(
        label: "Label",
        initial: "Рубашка Воскресенье для машинного вязания",
      );
      String category = context.knobs.text(
        label: "Category",
        initial: "Мужская одежда",
      );
      int price = context.knobs.sliderInt(
        label: "Price",
        initial: 300,
        min: 0,
        max: 300000,
      );
      bool added = context.knobs.boolean(label: "Added", initial: false);

      return PrimaryCardWidget(
        theme: theme,
        label: label,
        category: category,
        price: price,
        added: added,
        onAdd: () {
          debugPrint("added");
        },
        onRemove: () {
          debugPrint("removed");
        },
      );
    },
  );
}

class CartCardWidget extends BaseCardWidget {
  final String label;
  final int price;
  final int count;

  CartCardWidget({
    super.key,
    required super.theme,
    required this.label,
    required this.price,
    required this.count,
  }) : super(
         width: 335.w,
         height: null,
         child: Padding(
           padding: EdgeInsets.all(16.r),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             mainAxisSize: MainAxisSize.min,
             crossAxisAlignment: CrossAxisAlignment.start,
             spacing: 34.h,
             children: [
               Row(
                 children: [
                   Flexible(
                     child: Text(
                       label,
                       style: theme.styles.headlineMedium16.copyWith(
                         color: theme.palette.blackOld,
                       ),
                     ),
                   ),
                 ],
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Padding(
                     padding: EdgeInsets.symmetric(vertical: 4.h),
                     child: Text(
                       "$price ₽",
                       style: theme.styles.title3Medium17.copyWith(
                         color: theme.palette.blackOld,
                       ),
                     ),
                   ),
                   Padding(
                     padding: EdgeInsets.only(right: 106.w),
                     child: Text(
                       "$count штук",
                       style: theme.styles.textRegular15.copyWith(
                         color: theme.palette.blackOld,
                       ),
                     ),
                   ),
                 ],
               ),
             ],
           ),
         ),
       );

  static Story get story => Story(
    name: "CartCard",
    builder: (BuildContext context) {
      var theme = CustomTheme.of(context);
      String label = context.knobs.text(
        label: "Label",
        initial: "Рубашка воскресенье для машинного вязания",
      );
      int price = context.knobs.sliderInt(
        label: "Price",
        initial: 300,
        min: 0,
        max: 300000,
      );
      int count = context.knobs.sliderInt(
        label: "Count",
        initial: 1,
        min: 1,
        max: 300,
      );

      return CartCardWidget(
        theme: theme,
        label: label,
        price: price,
        count: count,
      );
    },
  );
}

class ProjectCardWidget extends BaseCardWidget {
  final String label;

  ProjectCardWidget({super.key, required super.theme, required this.label})
    : super(
        width: 335.w,
        height: null,
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 44.h,
            children: [
              Row(
                children: [
                  Flexible(
                    child: Text(
                      label,
                      style: theme.styles.headlineMedium16.copyWith(
                        color: theme.palette.blackOld,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 4.h),
                    child: Text(
                      "Прошло 2 дня",
                      style: theme.styles.captionSemibold14.copyWith(
                        color: theme.palette.placeholderOld,
                      ),
                    ),
                  ),
                  SmallButtonWidget.filled(
                    theme: theme,
                    onTap: () {},
                    text: "Открыть",
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  static Story get story => Story(
    name: "ProjectCard",
    builder: (BuildContext context) {
      var theme = CustomTheme.of(context);
      String label = context.knobs.text(
        label: "Label",
        initial: "Мой первый проект",
      );

      return ProjectCardWidget(theme: theme, label: label);
    },
  );
}
