// Назначение файла: Экран со списком кабинетов
// Дата создания: 27.02.25
// Автор: participant1 (Титовец Д. В.)

import "package:google_fonts/google_fonts.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

import "package:wms_test/presentation/theme/extension.dart";

import "package:wms_test/presentation/dialog/filter.dart";

import "package:wms_test/presentation/pages/account.dart";
import "package:wms_test/presentation/pages/create_account.dart";

class AccountsPage extends StatefulWidget {
  const AccountsPage({super.key});

  @override
  State<AccountsPage> createState() => _AccountsPageState();
}

class _AccountsPageState extends State<AccountsPage> {
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
          padding: EdgeInsets.only(top: 22, left: 22, right: 22),
          child: Column(
            children: [
              Column(
                spacing: 22,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
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
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            spacing: 8,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.to(CreateAccountPage());
                                },
                                child: Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        color: context.palette.bloc,
                                        borderRadius:
                                            BorderRadius.circular(18)),
                                    child: SvgPicture.asset(
                                        "assets/icons/add.svg",
                                        fit: BoxFit.none,
                                        height: 40,
                                        width: 40,
                                        colorFilter: ColorFilter.mode(
                                            context.palette.icon,
                                            BlendMode.srcIn))),
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
                              )
                            ])
                      ]),
                  GestureDetector(
                    onTap: () {
                      Get.to(AccountPage());
                    },
                    child: Container(
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
