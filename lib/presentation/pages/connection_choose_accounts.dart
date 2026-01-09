// Назначение файла: Экран для выбора подключаемых кабинетов
// Дата создания: 27.02.25
// Автор: participant1 (Титовец Д. В.)

import "package:google_fonts/google_fonts.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

import "package:wms_test/presentation/theme/extension.dart";

import "package:wms_test/presentation/pages/instruction.dart";
import "package:wms_test/presentation/pages/connection_selected_accounts.dart";

class ConnectionChooseAccountsPage extends StatefulWidget {
  const ConnectionChooseAccountsPage({super.key});

  @override
  State<ConnectionChooseAccountsPage> createState() =>
      _ConnectionChooseAccountsPageState();
}

class _ConnectionChooseAccountsPageState
    extends State<ConnectionChooseAccountsPage> {
  bool checkboxActivated = false;
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
                      child: Column(children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          checkboxActivated = checkboxActivated ? false : true;
                        });
                      },
                      child: Row(spacing: 16, children: [
                        SvgPicture.asset(
                            checkboxActivated
                                ? "assets/icons/checkboxActivated.svg"
                                : "assets/icons/checkboxDefault.svg",
                            fit: BoxFit.none,
                            height: 28,
                            width: 28),
                        Expanded(
                          child: Container(
                              padding: EdgeInsets.all(22),
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
                                    Flexible(
                                      child: Text(entry[0],
                                          maxLines: 2,
                                          softWrap: true,
                                          overflow: TextOverflow.clip,
                                          textAlign: TextAlign.left,
                                          style: GoogleFonts.inter(
                                              color: context.palette.text,
                                              textStyle: TextStyle(
                                                  color: context.palette.text,
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w700))),
                                    )
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
                                    ])
                              ])),
                        )
                      ]),
                    )
                  ])),
                  SizedBox(
                      width: double.infinity,
                      child: FilledButton(
                          onPressed: () {
                            Get.to(ConnectionSelectedAccountsPage());
                          },
                          style: ButtonStyle(
                              padding: WidgetStatePropertyAll(
                                  EdgeInsets.symmetric(
                                      horizontal: 22, vertical: 19)),
                              backgroundColor: WidgetStatePropertyAll(
                                  context.palette.accent),
                              shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18)))),
                          child: Text("Дальше",
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      color: context.palette.lightText,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700))))),
                ])));
  }
}
