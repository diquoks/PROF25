import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:matule_uikit/matule_uikit.dart';

void main() {
  group("Widgets", () {
    testWidgets("InputWidget", (tester) async {
      late final CustomTheme theme;
      await tester.pumpWidget(
        UtilsMaterialWrapper(
          widget: Builder(
            builder: (context) {
              theme = CustomTheme.of(context);
              return InputWidget(
                label: "",
                hint: "",
                error: "error",
                controller: TextEditingController(),
              );
            },
          ),
        ),
      );
      TextField textField = tester.firstWidget(find.byType(TextField));
      expect(
        ((textField.decoration) as InputDecoration).fillColor,
        theme.palette.errorOld.withValues(alpha: 0.1),
        reason: "BackgroundColor",
      );
      expect(
        (((textField.decoration) as InputDecoration).enabledBorder
                as OutlineInputBorder)
            .borderSide
            .color,
        theme.palette.errorOld,
        reason: "StrokeColor",
      );
    });
    testWidgets("ChipsButton", (tester) async {
      late final CustomTheme theme;
      await tester.pumpWidget(
        UtilsMaterialWrapper(
          widget: Builder(
            builder: (context) {
              theme = CustomTheme.of(context);
              return ChipsButtonWidget(
                theme: theme,
                active: true,
                onTap: () {},
                text: "",
              );
            },
          ),
        ),
      );
      FilledButton filledButton = tester.firstWidget(find.byType(FilledButton));
      expect(
        (filledButton.style as ButtonStyle).backgroundColor?.resolve({}),
        theme.palette.accentOld,
        reason: "Active BackgroundColor",
      );
      expect(
        ((filledButton.child as Text).style as TextStyle).color,
        theme.palette.whiteOld,
        reason: "Active TextColor",
      );
      await tester.restoreFrom(TestRestorationData.empty);
      await tester.pumpWidget(
        UtilsMaterialWrapper(
          widget: ChipsButtonWidget(
            theme: theme,
            active: false,
            onTap: () {},
            text: "",
          ),
        ),
      );
      filledButton = tester.firstWidget(find.byType(FilledButton));
      expect(
        (filledButton.style as ButtonStyle).backgroundColor?.resolve({}),
        theme.palette.inputBackgroundOld,
        reason: "Disabled BackgroundColor",
      );
      expect(
        ((filledButton.child as Text).style as TextStyle).color,
        theme.palette.descriptionOld,
        reason: "Disabled TextColor",
      );
    });
    testWidgets("PrimaryCard", (tester) async {
      late final CustomTheme theme;
      await tester.pumpWidget(
        UtilsMaterialWrapper(
          widget: Builder(
            builder: (context) {
              theme = CustomTheme.of(context);
              return PrimaryCardWidget(
                theme: theme,
                label: "label",
                category: "category",
                price: 0,
                added: false,
                onAdd: () {},
                onRemove: () {},
              );
            },
          ),
        ),
      );
      SmallButtonWidget smallButtonWidget = tester.firstWidget(
        find.byType(SmallButtonWidget),
      );
      expect(
        smallButtonWidget.backgroundColor,
        theme.palette.accent,
        reason: "Non-Added PrimaryCard's SmallButton BackgroundColor",
      );
      expect(
        smallButtonWidget.text,
        "Добавить",
        reason: "Non-Added PrimaryCard's SmallButton Text",
      );
      // expect(
      //   (filledButton.style as ButtonStyle).backgroundColor?.resolve({}),
      //   theme.palette.accentOld,
      //   reason: "Active BackgroundColor",
      // );
      // expect(
      //   ((filledButton.child as Text).style as TextStyle).color,
      //   theme.palette.whiteOld,
      //   reason: "Active TextColor",
      // );
      await tester.restoreFrom(TestRestorationData.empty);
      await tester.pumpWidget(
        UtilsMaterialWrapper(
          widget: PrimaryCardWidget(
            theme: theme,
            label: "label",
            category: "category",
            price: 0,
            added: true,
            onAdd: () {},
            onRemove: () {},
          ),
        ),
      );
      smallButtonWidget = tester.firstWidget(find.byType(SmallButtonWidget));
      expect(
        smallButtonWidget.backgroundColor,
        Colors.transparent,
        reason: "Added PrimaryCard's SmallButton BackgroundColor",
      );
      expect(
        smallButtonWidget.text,
        "Убрать",
        reason: "Added PrimaryCard's SmallButton Text",
      );
      // expect(
      //   (filledButton.style as ButtonStyle).backgroundColor?.resolve({}),
      //   theme.palette.inputBackgroundOld,
      //   reason: "Disabled BackgroundColor",
      // );
      // expect(
      //   ((filledButton.child as Text).style as TextStyle).color,
      //   theme.palette.descriptionOld,
      //   reason: "Disabled TextColor",
      // );
    });
  });
}
