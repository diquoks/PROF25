import 'package:flutter/material.dart';

abstract class Palette {
  abstract Color accent;
  abstract Color accentInactive;
  abstract Color black;
  abstract Color white;
  abstract Color error;
  abstract Color success;
  abstract Color inputBackground;
  abstract Color inputStroke;
  abstract Color inputIcon;
  abstract Color placeholder;
  abstract Color description;
  abstract Color cardStroke;

  abstract Color accentOld;
  abstract Color accentInactiveOld;
  abstract Color blackOld;
  abstract Color whiteOld;
  abstract Color errorOld;
  abstract Color inputBackgroundOld;
  abstract Color inputStrokeOld;
  abstract Color inputIconOld;
  abstract Color placeholderOld;
  abstract Color descriptionOld;
  abstract Color cardStrokeOld;

  abstract Color cardShadow;
}

class LightPalette extends Palette {
  @override
  Color accent = Color(0xFF1A6FEE);

  @override
  Color accentInactive = Color(0xFFC5D2FF);

  @override
  Color black = Color(0xFF2D2C2C);

  @override
  Color cardStroke = Color(0xFFF2F2F2);

  @override
  Color description = Color(0xFF8787A1);

  @override
  Color error = Color(0xFFFF4646);

  @override
  Color inputBackground = Color(0xFFF7F7FA);

  @override
  Color inputIcon = Color(0xFFBFC7D1);

  @override
  Color inputStroke = Color(0xFFE6E6E6);

  @override
  Color placeholder = Color(0xFF98989A);

  @override
  Color success = Color(0xFF00B412);

  @override
  Color white = Color(0xFFFFFFFF);

  @override
  Color accentInactiveOld = Color(0xFFC9D4FB);

  @override
  Color accentOld = Color(0xFF2074F2);

  @override
  Color blackOld = Color(0xFF000000);

  @override
  Color cardStrokeOld = Color(0xFFF4F4F4);

  @override
  Color descriptionOld = Color(0xFF7E7E9A);

  @override
  Color errorOld = Color(0xFFFD3535);

  @override
  Color inputBackgroundOld = Color(0xFFF5F5F9);

  @override
  Color inputIconOld = Color(0xFF818C99);

  @override
  Color inputStrokeOld = Color(0xFFEBEBEB);

  @override
  Color placeholderOld = Color(0xFF939396);

  @override
  Color whiteOld = Color(0xFFFFFFFF);

  @override
  Color cardShadow = Color(0x99E4E8F5);
}
