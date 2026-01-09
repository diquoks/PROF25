// Назначение файла: Экран с информацией о кабинете
// Дата создания: 27.02.25
// Автор: participant1 (Титовец Д. В.)

import "package:google_fonts/google_fonts.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

import "package:wms_test/presentation/theme/extension.dart";

import "package:wms_test/presentation/pages/edit_account.dart";

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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
                      child: Text(entry[0],
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
                        Get.to(EditAccountPage());
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
                Text("Статус: ${entry[1]}",
                    style: GoogleFonts.inter(
                        color: context.palette.text,
                        textStyle: TextStyle(
                            color: context.palette.text,
                            fontSize: 18,
                            fontWeight: FontWeight.w400)))
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Text("Создан: ${entry[2]}",
                    style: GoogleFonts.inter(
                        color: context.palette.text,
                        textStyle: TextStyle(
                            color: context.palette.text,
                            fontSize: 18,
                            fontWeight: FontWeight.w400)))
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Text("Истечет: ${entry[3]}",
                    style: GoogleFonts.inter(
                        color: context.palette.text,
                        textStyle: TextStyle(
                            color: context.palette.text,
                            fontSize: 18,
                            fontWeight: FontWeight.w400)))
              ])
            ],
          ),
        ));
  }
}
