// Назначение файла: Экран с информацией о складе
// Дата создания: 27.02.25
// Автор: participant1 (Титовец Д. В.)

import "package:google_fonts/google_fonts.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

import "package:wms_test/presentation/theme/extension.dart";

import "package:wms_test/presentation/pages/connection_choose_accounts.dart";

class WarehousePage extends StatefulWidget {
  const WarehousePage({super.key});

  @override
  State<WarehousePage> createState() => _WarehousePageState();
}

class _WarehousePageState extends State<WarehousePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: context.palette.background,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(18),
              child: Column(
                spacing: 22,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      spacing: 22,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: SvgPicture.asset(
                              "assets/icons/arrow_back_ios_new.svg",
                              fit: BoxFit.none,
                              height: 24,
                              width: 24,
                              colorFilter: ColorFilter.mode(
                                  context.palette.icon, BlendMode.srcIn)),
                        ),
                        Expanded(
                          child: Text("Название склада",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.inter(
                                  color: context.palette.text,
                                  textStyle: TextStyle(
                                      color: context.palette.text,
                                      fontSize: 26,
                                      fontWeight: FontWeight.w700))),
                        ),
                        SvgPicture.asset("assets/icons/contract.svg",
                            fit: BoxFit.none,
                            height: 24,
                            width: 24,
                            colorFilter: ColorFilter.mode(
                                context.palette.icon, BlendMode.srcIn)),
                        GestureDetector(
                          onTap: () {
                            Get.to(ConnectionChooseAccountsPage());
                          },
                          child: SvgPicture.asset("assets/icons/more_vert.svg",
                              fit: BoxFit.none,
                              height: 24,
                              width: 24,
                              colorFilter: ColorFilter.mode(
                                  context.palette.icon, BlendMode.srcIn)),
                        ),
                      ],
                    ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Text("Статус подключения",
                        style: GoogleFonts.inter(
                            color: context.palette.accent,
                            textStyle: TextStyle(
                                color: context.palette.accent,
                                fontSize: 18,
                                fontWeight: FontWeight.w500)))
                  ]),
                  Column(spacing: 10, children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Text("Адрес: Адрес",
                          style: GoogleFonts.inter(
                              color: context.palette.text,
                              textStyle: TextStyle(
                                  color: context.palette.text,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400)))
                    ]),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Text("Тип склада: Тип склада",
                          style: GoogleFonts.inter(
                              color: context.palette.text,
                              textStyle: TextStyle(
                                  color: context.palette.text,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400)))
                    ]),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Text("Тип доставки: Тип доставки",
                          style: GoogleFonts.inter(
                              color: context.palette.text,
                              textStyle: TextStyle(
                                  color: context.palette.text,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400)))
                    ]),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Text("Сортировочный центр: ID, ID, ID",
                          style: GoogleFonts.inter(
                              color: context.palette.text,
                              textStyle: TextStyle(
                                  color: context.palette.text,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400)))
                    ]),
                  ])
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 22, vertical: 18),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Text("Подключённые кабинеты",
                    style: GoogleFonts.inter(
                        color: context.palette.text,
                        textStyle: TextStyle(
                            color: context.palette.text,
                            fontSize: 20,
                            fontWeight: FontWeight.w700)))
              ]),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 22, vertical: 14),
                  decoration: BoxDecoration(
                      color: context.palette.bloc,
                      borderRadius: BorderRadius.circular(18)),
                  child: Row(
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
                        Text("Название кабинета",
                            style: GoogleFonts.inter(
                                color: context.palette.text,
                                textStyle: TextStyle(
                                    color: context.palette.text,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700)))
                      ])),
            )
          ],
        ));
  }
}
