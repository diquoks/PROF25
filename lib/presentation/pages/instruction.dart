// Назначение файла: Экран для отображения сториз
// Дата создания: 26.02.25
// Автор: participant1 (Титовец Д. В.)

import "package:flutter/material.dart";
import "package:get/get.dart";

import "package:wms_test/presentation/theme/extension.dart";
import "package:flutter_svg/flutter_svg.dart";

class InstructionPage extends StatefulWidget {
  const InstructionPage({super.key});

  @override
  State<InstructionPage> createState() => _InstructionPageState();
}

class _InstructionPageState extends State<InstructionPage> {
  List pictures = [
    "assets/instruction/1.jpeg",
    "assets/instruction/2.png",
    "assets/instruction/3.jpg",
  ];
  int currentPicture = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: context.palette.background,
        body: Stack(alignment: Alignment.topCenter, children: [
          GestureDetector(
            onTap: () {
              setState(() {
                if ((currentPicture >= 0) &&
                    (currentPicture < pictures.length - 1)) {
                  currentPicture += 1;
                } else {
                  Get.back();
                }
              });
            },
            child: SizedBox(
                height: double.infinity,
                child:
                    Image.asset(fit: BoxFit.cover, pictures[currentPicture])),
          ),
          Container(
              height: 132,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color(0xCC000000),
                    Color(0x00000000),
                  ]))),
          Padding(
            padding: const EdgeInsets.only(top: 62, right: 10),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              IconButton(
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(context.palette.accent),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)))),
                  onPressed: () {
                    Get.back();
                  },
                  color: context.palette.accent,
                  icon: SvgPicture.asset("assets/icons/close.svg",
                      height: 40, width: 40))
            ]),
          )
        ]));
  }
}
