// Назначение файла: Кастомный виджет для профиля
// Дата создания: 27.02.25
// Автор: participant1 (Титовец Д. В.)

import "package:flutter_svg/flutter_svg.dart";
import "package:google_fonts/google_fonts.dart";
import "package:flutter/material.dart";

import "package:wms_test/presentation/theme/extension.dart";

class CustomListEntry extends StatefulWidget {
  final String iconPath;
  final String text;

  const CustomListEntry(
      {super.key, required this.iconPath, required this.text});

  @override
  State<CustomListEntry> createState() => _CustomListEntryState();
}

class _CustomListEntryState extends State<CustomListEntry> {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(spacing: 14, mainAxisAlignment: MainAxisAlignment.start, children: [
        SvgPicture.asset(widget.iconPath,
            width: 22,
            height: 22,
            colorFilter:
                ColorFilter.mode(context.palette.text, BlendMode.srcIn)),
        Text(widget.text,
            style: GoogleFonts.inter(
                textStyle: TextStyle(
                    color: context.palette.text,
                    fontSize: 16,
                    fontWeight: FontWeight.w500)))
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        SvgPicture.asset("assets/icons/list_arrow.svg",
            colorFilter:
                ColorFilter.mode(context.palette.text, BlendMode.srcIn))
      ])
    ]);
  }
}
