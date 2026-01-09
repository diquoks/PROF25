// Назначение файла: Экран для просмотра информации о карточке товара
// Дата создания: 27.02.25
// Автор: participant1 (Титовец Д. В.)

import "package:google_fonts/google_fonts.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

import "package:wms_test/presentation/theme/extension.dart";

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
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
              Column(spacing: 22, children: [
                Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(spacing: 22, children: [
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
                        child: Text("Название",
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
                      SvgPicture.asset("assets/icons/more_vert.svg",
                          fit: BoxFit.none,
                          height: 24,
                          width: 24,
                          colorFilter: ColorFilter.mode(
                              context.palette.icon, BlendMode.srcIn))
                    ]))
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                      flex: 3,
                      child: Text(
                          "Ключ1: Значение1\nКлюч2: Значение2\nКлюч3: Значение3",
                          style: GoogleFonts.inter(
                              color: context.palette.text,
                              textStyle: TextStyle(
                                  color: context.palette.text,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400)))),
                ],
              ),
              Column(spacing: 12, children: [
                Row(
                  spacing: 14,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 250,
                        width: 188,
                        child: Image.asset("assets/images/card_sample.png")),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("N медиа-файлов",
                        style: GoogleFonts.inter(
                            color: context.palette.text,
                            textStyle: TextStyle(
                                color: context.palette.text,
                                fontSize: 18,
                                fontWeight: FontWeight.w400))),
                  ],
                )
              ]),
              Flexible(
                  child: Text(
                      "Тест контент Тест контент Тест контент Тест контент Тест контент Тест контент Тест контент Тест контент Тест контент Тест контент Тест контент Тест контент Тест контент Тест контент",
                      style: GoogleFonts.inter(
                          color: context.palette.text,
                          textStyle: TextStyle(
                              color: context.palette.text,
                              fontSize: 18,
                              fontWeight: FontWeight.w400))))
            ],
          ),
        ));
  }
}
