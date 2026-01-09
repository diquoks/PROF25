// Назначение файла: Файл с классами для разных тем, содержит все (почти) цвета используемые в приложении
// Дата создания: 25.02.25
// Автор: participant1 (Титовец Д. В.)

import "package:flutter/material.dart";

class Palette {
  late Color background;
  late Color bloc;
  late Color hoverItem;
  late Color backSlide;
  late Color icon;
  late Color text;
  late Color lightText;
  late Color hint;
  late Color accent;
  late Color accentDark;
  late Color sideMenu;
}

// Светлая тема
class LightPalette extends Palette {
  @override
  Color get background => Color(0xFFFFFFFF);

  @override
  Color get bloc => Color(0xFFEEEEEE);

  @override
  Color get hoverItem => Color(0xFF2F2F2F);

  @override
  Color get backSlide => Color(0x33FFFFFF);

  @override
  Color get icon => Color(0xFF282828);

  @override
  Color get text => Color(0xFF353535);

  @override
  Color get lightText => Color(0xFFFFFFFF);

  @override
  Color get hint => Color(0xFF6C6C6C);

  @override
  Color get accent => Color(0xFF00B3FF);

  @override
  Color get accentDark => Color(0xFFB5E9FF);

  @override
  Color get sideMenu => Color(0xFFE3E3E3);
}

// Тёмная тема
class DarkPalette extends Palette {
  @override
  Color get background => Color(0xFF1E1E1E);

  @override
  Color get bloc => Color(0xFF141414);

  @override
  Color get hoverItem => Color(0xFF2F2F2F);

  @override
  Color get backSlide => Color(0x33FFFFFF);

  @override
  Color get icon => Color(0xFFFFFFFF);

  @override
  Color get text => Color(0xFFFFFFFF);

  @override
  Color get lightText => Color(0xFFFFFFFF);

  @override
  Color get hint => Color(0xFFA1A1A1);

  @override
  Color get accent => Color(0xFF00B3FF);

  @override
  Color get accentDark => Color(0xFF0377A8);

  @override
  Color get sideMenu => Color(0xFF262525);
}
