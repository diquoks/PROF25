// Назначение файла: Кастомный виджет Text (заголовок)
// Дата создания: 25.02.25
// Автор: participant1 (Титовец Д. В.)

import "package:google_fonts/google_fonts.dart";
import "package:flutter/material.dart";

import "package:wms_test/presentation/theme/extension.dart";

class CustomTitleText extends StatefulWidget {
  final String text;

  const CustomTitleText({super.key, required this.text});

  @override
  State<CustomTitleText> createState() => _CustomTitleTextState();
}

class _CustomTitleTextState extends State<CustomTitleText> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.text, textAlign: TextAlign.center,
        style: GoogleFonts.inter(
            textStyle: TextStyle(
                color: context.palette.text,
                fontSize: 36,
                fontWeight: FontWeight.w700)));
  }
}
