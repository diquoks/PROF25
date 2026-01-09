// Назначение файла: Экран для просмотра списка событий
// Дата создания: 27.02.25
// Автор: participant1 (Титовец Д. В.)

import "package:google_fonts/google_fonts.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

import "package:wms_test/presentation/theme/extension.dart";

import "package:wms_test/presentation/dialog/filter.dart";

import "package:wms_test/presentation/widgets/custom_filled_button.dart";

class EventsPage extends StatefulWidget {
  const EventsPage({super.key});

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  List entry = [
    "14.01.2025 10:10:10",
    "Описание события",
    "Статус события",
    "Тип события",
    "ID",
    "Название сущности",
    "ID",
    "ID",
    "1.0.0"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: context.palette.background,
        body: Padding(
            padding: EdgeInsets.all(22),
            child: Column(
                spacing: 24,
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
                            showFilterDialog(context);
                          },
                          child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: context.palette.bloc,
                                  borderRadius: BorderRadius.circular(18)),
                              child: SvgPicture.asset(
                                  "assets/icons/filter_list.svg",
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
                            padding: EdgeInsets.all(32),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: context.palette.bloc,
                                borderRadius: BorderRadius.circular(36)),
                            child: Column(spacing: 22, children: [
                              Row(
                                spacing: 22,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(entry[0],
                                      style: GoogleFonts.inter(
                                          color: context.palette.text,
                                          textStyle: TextStyle(
                                              color: context.palette.text,
                                              fontSize: 22,
                                              fontWeight: FontWeight.w700)))
                                ],
                              ),
                              Column(spacing: 16, children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: Text("Описание: ${entry[1]}",
                                            style: GoogleFonts.inter(
                                                color: context.palette.text,
                                                textStyle: TextStyle(
                                                    color: context.palette.text,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w400))),
                                      )
                                    ]),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: Text("Статус: ${entry[2]}",
                                            style: GoogleFonts.inter(
                                                color: context.palette.text,
                                                textStyle: TextStyle(
                                                    color: context.palette.text,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w400))),
                                      )
                                    ]),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: Text("Тип: ${entry[3]}",
                                            style: GoogleFonts.inter(
                                                color: context.palette.text,
                                                textStyle: TextStyle(
                                                    color: context.palette.text,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w400))),
                                      )
                                    ]),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: Text("ID сущности: ${entry[4]}",
                                            style: GoogleFonts.inter(
                                                color: context.palette.text,
                                                textStyle: TextStyle(
                                                    color: context.palette.text,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w400))),
                                      )
                                    ]),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: Text(
                                            "Связанная сущность: ${entry[5]}",
                                            style: GoogleFonts.inter(
                                                color: context.palette.text,
                                                textStyle: TextStyle(
                                                    color: context.palette.text,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w400))),
                                      )
                                    ]),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: Text(
                                            "ID связанной сущности: ${entry[6]}",
                                            style: GoogleFonts.inter(
                                                color: context.palette.text,
                                                textStyle: TextStyle(
                                                    color: context.palette.text,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w400))),
                                      )
                                    ]),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: Text("ID процесса: ${entry[7]}",
                                            style: GoogleFonts.inter(
                                                color: context.palette.text,
                                                textStyle: TextStyle(
                                                    color: context.palette.text,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w400))),
                                      )
                                    ]),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: Text("Версия: ${entry[8]}",
                                            style: GoogleFonts.inter(
                                                color: context.palette.text,
                                                textStyle: TextStyle(
                                                    color: context.palette.text,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w400))),
                                      )
                                    ])
                              ]),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    height: 60,
                                    width: 240,
                                    child: CustomFilledButton(
                                        text: "см. отчет по связям",
                                        callback: () {}),
                                  ),
                                ],
                              )
                            ])),
                      ],
                    ),
                  ),
                ])));
  }
}
