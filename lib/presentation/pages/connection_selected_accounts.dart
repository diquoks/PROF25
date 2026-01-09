// Назначение файла: Экран для подключения выбранных кабинетов
// Дата создания: 27.02.25
// Автор: participant1 (Титовец Д. В.)

import "package:google_fonts/google_fonts.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

import "package:wms_test/presentation/theme/extension.dart";

import "package:wms_test/presentation/pages/instruction.dart";

class ConnectionSelectedAccountsPage extends StatefulWidget {
  const ConnectionSelectedAccountsPage({super.key});

  @override
  State<ConnectionSelectedAccountsPage> createState() =>
      _ConnectionSelectedAccountsPageState();
}

class _ConnectionSelectedAccountsPageState
    extends State<ConnectionSelectedAccountsPage> {
  List entry = [
    "Название кабинета",
    "Статус токена",
    "18:07 13.01.2025",
    "18:07 13.01.2026"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: context.palette.background,
        body: Padding(
            padding: EdgeInsets.all(22),
            child: Column(
                spacing: 22,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.back();
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
                        GestureDetector(
                          onTap: () {
                            Get.to(InstructionPage());
                          },
                          child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: context.palette.bloc,
                                  borderRadius: BorderRadius.circular(18)),
                              child: SvgPicture.asset("assets/icons/info_i.svg",
                                  fit: BoxFit.none,
                                  height: 30,
                                  width: 30,
                                  colorFilter: ColorFilter.mode(
                                      context.palette.icon, BlendMode.srcIn))),
                        ),
                      ]),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                            padding: EdgeInsets.all(22),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: context.palette.bloc,
                                borderRadius: BorderRadius.circular(36)),
                            child: Column(spacing: 22, children: [
                              Row(
                                spacing: 22,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      width: 45,
                                      height: 45,
                                      child: Image.asset(
                                        "assets/icons/wb_icon.png",
                                        fit: BoxFit.cover,
                                      )),
                                  Text(entry[0],
                                      style: GoogleFonts.inter(
                                          color: context.palette.text,
                                          textStyle: TextStyle(
                                              color: context.palette.text,
                                              fontSize: 24,
                                              fontWeight: FontWeight.w700)))
                                ],
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Статус: ${entry[1]}",
                                        style: GoogleFonts.inter(
                                            color: context.palette.text,
                                            textStyle: TextStyle(
                                                color: context.palette.text,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400)))
                                  ]),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Создан: ${entry[2]}",
                                        style: GoogleFonts.inter(
                                            color: context.palette.text,
                                            textStyle: TextStyle(
                                                color: context.palette.text,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400)))
                                  ]),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Истечет: ${entry[3]}",
                                        style: GoogleFonts.inter(
                                            color: context.palette.text,
                                            textStyle: TextStyle(
                                                color: context.palette.text,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400)))
                                  ]),
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
                                          context.palette.text,
                                          BlendMode.srcIn)),
                                  fillColor: context.palette.background,
                                  filled: true,
                                  hintText: "Выберите сортировочный центр",
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
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: FilledButton(
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
                                    child: Text("Дублировать",
                                        style: GoogleFonts.inter(
                                            textStyle: TextStyle(
                                                color: context.palette.lightText,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700)))),
                              ),
                            ])),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                        onPressed: () {
                          Get.close(2);
                        },
                        style: ButtonStyle(
                            padding: WidgetStatePropertyAll(
                                EdgeInsets.symmetric(
                                    horizontal: 22, vertical: 19)),
                            backgroundColor:
                                WidgetStatePropertyAll(context.palette.accent),
                            shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18)))),
                        child: Text("Сохранить",
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    color: context.palette.lightText,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700)))),
                  )
                ])));
  }
}
