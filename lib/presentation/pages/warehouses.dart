// Назначение файла: Экран со списком складов
// Дата создания: 27.02.25
// Автор: participant1 (Титовец Д. В.)

import "package:google_fonts/google_fonts.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

import "package:wms_test/presentation/theme/extension.dart";

import "package:wms_test/presentation/dialog/filter.dart";

import "package:wms_test/presentation/pages/warehouse.dart";

class WarehousesPage extends StatefulWidget {
  const WarehousesPage({super.key});

  @override
  State<WarehousesPage> createState() => _WarehousesPageState();
}

class _WarehousesPageState extends State<WarehousesPage> {
  List entry = [
    "Название склада",
    "af7c1fe6-d669-414e-b066-e9733f0de7a8",
    "Статус подключения",
    "Фамилия И. О.",
    "7743013902",
    "Москва, Ленинский проспект, дом 4, строение 1А, квартира 10"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: context.palette.background,
        body: Padding(
          padding: EdgeInsets.only(top: 22, left: 22, right: 22),
          child: Column(
            children: [
              Column(
                spacing: 22,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 4),
                                  child: Text("N элементов",
                                      style: GoogleFonts.inter(
                                          color: context.palette.text,
                                          textStyle: TextStyle(
                                              color: context.palette.text,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700))),
                                )
                              ]),
                        ),
                        Expanded(
                          child: Container(
                              alignment: Alignment.center,
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: context.palette.bloc,
                                  borderRadius: BorderRadius.circular(18)),
                              child: Text("Все",
                                  style: GoogleFonts.inter(
                                      color: context.palette.text,
                                      textStyle: TextStyle(
                                          color: context.palette.text,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700)))),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              spacing: 8,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    showFilterDialog(context);
                                  },
                                  child: Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                          color: context.palette.bloc,
                                          borderRadius:
                                              BorderRadius.circular(18)),
                                      child: SvgPicture.asset(
                                          "assets/icons/filter_list.svg",
                                          fit: BoxFit.none,
                                          height: 24,
                                          width: 24,
                                          colorFilter: ColorFilter.mode(
                                              context.palette.icon,
                                              BlendMode.srcIn))),
                                ),
                                Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        color: context.palette.bloc,
                                        borderRadius:
                                            BorderRadius.circular(18)),
                                    child: SvgPicture.asset(
                                        "assets/icons/search.svg",
                                        fit: BoxFit.none,
                                        height: 30,
                                        width: 30,
                                        colorFilter: ColorFilter.mode(
                                            context.palette.icon,
                                            BlendMode.srcIn)))
                              ]),
                        )
                      ]),
                  GestureDetector(
                    onTap: () {
                      Get.to(WarehousePage());
                    },
                    child: Container(
                        padding: EdgeInsets.all(22),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: context.palette.bloc,
                            borderRadius: BorderRadius.circular(18)),
                        child: Column(spacing: 22, children: [
                          Column(
                            spacing: 14,
                            children: [
                              Row(
                                spacing: 22,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(entry[0],
                                      style: GoogleFonts.inter(
                                          color: context.palette.text,
                                          textStyle: TextStyle(
                                              color: context.palette.text,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700)))
                                ],
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(entry[1],
                                        style: GoogleFonts.inter(
                                            color: context.palette.hint,
                                            textStyle: TextStyle(
                                                color: context.palette.hint,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400)))
                                  ]),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(entry[2],
                                        style: GoogleFonts.inter(
                                            color: context.palette.accent,
                                            textStyle: TextStyle(
                                                color: context.palette.accent,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500)))
                                  ]),
                            ],
                          ),
                          Column(spacing: 6, children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Владелец: ${entry[3]}",
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.inter(
                                          color: context.palette.hint,
                                          textStyle: TextStyle(
                                              color: context.palette.hint,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500)))
                                ]),
                            Row(
                              children: [
                                Text("ИНН: ${entry[4]}",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.inter(
                                        color: context.palette.hint,
                                        textStyle: TextStyle(
                                            color: context.palette.hint,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500))),
                              ],
                            ),
                            Text("Адрес: ${entry[5]}",
                                style: GoogleFonts.inter(
                                    color: context.palette.hint,
                                    textStyle: TextStyle(
                                        color: context.palette.hint,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500))),
                          ])
                        ])),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
