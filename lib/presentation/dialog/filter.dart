// Назначение файла: Экран с информацией о кабинете
// Дата создания: 27.02.25
// Автор: participant1 (Титовец Д. В.)

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import 'package:wms_test/presentation/theme/extension.dart';

Future<void> showFilterDialog(BuildContext context) async {
  await showDialog(
      context: context,
      builder: (_) => AlertDialog(
            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
            alignment: Alignment.topCenter,
            insetPadding: EdgeInsets.all(22),
            actionsPadding: EdgeInsets.zero,
            actions: [
              Container(
                padding: EdgeInsets.all(22),
                decoration: BoxDecoration(
                    color: context.palette.background,
                    borderRadius: BorderRadius.circular(32)),
                child: Column(spacing: 22, children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 12,
                    children: [
                      Text("Параметр",
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  color: context.palette.text,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500))),
                      TextField(
                        cursorColor: context.palette.accent,
                        style: GoogleFonts.inter(
                            textStyle: TextStyle(
                                color: context.palette.text,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 22, vertical: 18),
                          suffixIcon: SvgPicture.asset(
                              "assets/icons/keyboard_arrow_down.svg",
                              fit: BoxFit.scaleDown,
                              height: 24,
                              width: 24,
                              colorFilter: ColorFilter.mode(
                                  context.palette.text, BlendMode.srcIn)),
                          fillColor: context.palette.bloc,
                          filled: true,
                          hintText: "Вариант по умолчанию",
                          hintStyle: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  color: context.palette.text,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 12,
                    children: [
                      Text("Параметр",
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  color: context.palette.text,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500))),
                      TextField(
                        cursorColor: context.palette.accent,
                        style: GoogleFonts.inter(
                            textStyle: TextStyle(
                                color: context.palette.text,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 22, vertical: 18),
                          suffixIcon: SvgPicture.asset(
                              "assets/icons/keyboard_arrow_down.svg",
                              fit: BoxFit.scaleDown,
                              height: 24,
                              width: 24,
                              colorFilter: ColorFilter.mode(
                                  context.palette.text, BlendMode.srcIn)),
                          fillColor: context.palette.bloc,
                          filled: true,
                          hintText: "Подсказка",
                          hintStyle: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  color: context.palette.hint,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(spacing: 22, children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: context.palette.bloc,
                              borderRadius: BorderRadius.circular(18)),
                          child: SvgPicture.asset(
                              "assets/icons/arrow_back_ios_new.svg",
                              fit: BoxFit.none,
                              height: 24,
                              width: 24,
                              colorFilter: ColorFilter.mode(
                                  context.palette.icon, BlendMode.srcIn))),
                    ),
                    FilledButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            padding: WidgetStatePropertyAll(
                                EdgeInsets.symmetric(
                                    horizontal: 22, vertical: 19)),
                            backgroundColor:
                                WidgetStatePropertyAll(context.palette.accent),
                            shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18)))),
                        child: Text("Фильтрация",
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    color: context.palette.lightText,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700)))),
                    Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: context.palette.bloc,
                            borderRadius: BorderRadius.circular(18)),
                        child: SvgPicture.asset(
                            "assets/icons/keyboard_double_arrow_down.svg",
                            fit: BoxFit.none,
                            height: 24,
                            width: 24,
                            colorFilter: ColorFilter.mode(
                                context.palette.icon, BlendMode.srcIn)))
                  ])
                ]),
              )
            ],
          ));
}
