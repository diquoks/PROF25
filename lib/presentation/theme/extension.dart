// Назначение файла: Расширение "context" классами из файла "palette.dart"
// Дата создания: 25.02.25
// Автор: participant1 (Титовец Д. В.)

import "package:flutter/material.dart";

import "package:wms_test/presentation/theme/palette.dart";

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  final Palette palette;

  CustomThemeExtension(this.palette);

  @override
  ThemeExtension<CustomThemeExtension> copyWith() {
    return CustomThemeExtension(palette);
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      covariant ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other == null || other is! CustomThemeExtension) {
      return this;
    }
    return CustomThemeExtension(other.palette);
  }
}

class AppTheme with ChangeNotifier {
  static final lightExtension = CustomThemeExtension(LightPalette());
  static final darkExtension = CustomThemeExtension(DarkPalette());
  static final light = ThemeData.light().copyWith(extensions: [lightExtension]);
  static final dark = ThemeData.dark().copyWith(extensions: [darkExtension]);
}

extension ContextUtils on BuildContext {
  Palette get palette =>
      Theme.of(this).extension<CustomThemeExtension>()?.palette ??
      LightPalette();
}
