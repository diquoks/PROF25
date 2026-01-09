// Назначение файла: Кастомный виджет Text (кнопка)
// Дата создания: 26.02.25
// Автор: participant1 (Титовец Д. В.)

import "package:google_fonts/google_fonts.dart";
import "package:flutter/material.dart";

import "package:wms_test/presentation/theme/extension.dart";

class CustomAccentText extends StatefulWidget {
  final String text;
  final VoidCallback callback;

  const CustomAccentText(
      {super.key, required this.text, required this.callback});

  @override
  State<CustomAccentText> createState() => _CustomAccentTextState();
}

class _CustomAccentTextState extends State<CustomAccentText> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.callback,
      child: Text(widget.text,
          style: GoogleFonts.inter(
              textStyle: TextStyle(
                  color: context.palette.accent,
                  fontSize: 16,
                  fontWeight: FontWeight.w500))),
    );
  }
}
