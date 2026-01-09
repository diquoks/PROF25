// Назначение файла: Экран для просмотра списка карточек товаров
// Дата создания: 27.02.25
// Автор: participant1 (Титовец Д. В.)

import "package:google_fonts/google_fonts.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

import "package:wms_test/presentation/theme/extension.dart";

import "package:wms_test/presentation/dialog/filter.dart";

import "package:wms_test/presentation/pages/card.dart";

class CardsPage extends StatefulWidget {
  const CardsPage({super.key});

  @override
  State<CardsPage> createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  List entry = ["Название карточки", "Название кабинета", "24.02.2025"];

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
                            spacing: 18,
                            children: [
                              Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: context.palette.bloc,
                                      borderRadius: BorderRadius.circular(18)),
                                  child: SvgPicture.asset(
                                      "assets/icons/directory_sync.svg",
                                      fit: BoxFit.none,
                                      height: 42,
                                      width: 42,
                                      colorFilter: ColorFilter.mode(
                                          context.palette.icon,
                                          BlendMode.srcIn))),
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
                      Get.to(CardPage());
                    },
                    child: Container(
                        padding: EdgeInsets.all(22),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: context.palette.bloc,
                            borderRadius: BorderRadius.circular(18)),
                        child: Column(spacing: 22, children: [
                          Row(
                            spacing: 22,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(entry[0],
                                  style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                          color: context.palette.text,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700)))
                            ],
                          ),
                          Column(spacing: 6, children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Кабинет: ${entry[1]}",
                                      style: GoogleFonts.inter(
                                          textStyle: TextStyle(
                                              color: context.palette.hint,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400)))
                                ]),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Дата создания: ${entry[2]}",
                                      style: GoogleFonts.inter(
                                          textStyle: TextStyle(
                                              color: context.palette.hint,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400)))
                                ])
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
