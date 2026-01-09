// Назначение файла: Кастомный виджет FilledButton
// Дата создания: 25.02.25
// Автор: participant1 (Титовец Д. В.)

import "package:google_fonts/google_fonts.dart";
import "package:flutter/material.dart";

import "package:wms_test/presentation/theme/extension.dart";

class CustomFilledButton extends StatefulWidget {
  final String text;
  final VoidCallback callback;

  const CustomFilledButton(
      {super.key, required this.text, required this.callback});

  @override
  State<CustomFilledButton> createState() => _CustomFilledButtonState();
}

class _CustomFilledButtonState extends State<CustomFilledButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
          onPressed: widget.callback,
          style: ButtonStyle(
              padding: WidgetStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 22, vertical: 19)),
              backgroundColor: WidgetStatePropertyAll(context.palette.accent),
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)))),
          child: Text(widget.text,
              style: GoogleFonts.inter(
                  textStyle: TextStyle(
                      color: context.palette.lightText,
                      fontSize: 18,
                      fontWeight: FontWeight.w700)))),
    );
  }
}
