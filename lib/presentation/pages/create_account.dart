// Назначение файла: Экран для добавления кабинета
// Дата создания: 27.02.25
// Автор: participant1 (Титовец Д. В.)

import "package:google_fonts/google_fonts.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

import "package:wms_test/presentation/theme/extension.dart";
import "package:wms_test/presentation/widgets/custom_filled_button.dart";
import "package:wms_test/presentation/widgets/custom_text_field.dart";

import "package:wms_test/presentation/pages/instruction.dart";

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: context.palette.background,
        body: Padding(
          padding: EdgeInsets.all(22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(spacing: 22, children: [
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
                CustomTextField(hint: "Токен"),
                Row(spacing: 10, children: [
                  Expanded(child: CustomTextField(hint: "Название кабинета")),
                  Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: context.palette.bloc,
                          borderRadius: BorderRadius.circular(18)),
                      child: SvgPicture.asset(
                          "assets/icons/qr_code_scanner.svg",
                          fit: BoxFit.none,
                          height: 28,
                          width: 28,
                          colorFilter: ColorFilter.mode(
                              context.palette.icon, BlendMode.srcIn)))
                ]),
                TextField(
                  cursorColor: context.palette.accent,
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                          color: context.palette.text,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 22, vertical: 18),
                    suffixIcon: SvgPicture.asset(
                        "assets/icons/keyboard_arrow_down.svg",
                        fit: BoxFit.scaleDown,
                        height: 24,
                        width: 24,
                        colorFilter: ColorFilter.mode(
                            context.palette.text, BlendMode.srcIn)),
                    fillColor: context.palette.bloc,
                    filled: true,
                    hintText: "Маркетплейс",
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
              ]),
              CustomFilledButton(
                  text: "Сохранить",
                  callback: () {
                    Get.back();
                  })
            ],
          ),
        ));
  }
}
