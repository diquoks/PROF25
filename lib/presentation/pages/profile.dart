// Назначение файла: Главный экран профиля
// Дата создания: 27.02.25
// Автор: participant1 (Титовец Д. В.)

import "package:google_fonts/google_fonts.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

import "package:wms_test/presentation/theme/extension.dart";

import "package:wms_test/presentation/widgets/custom_list_entry.dart";

import "package:wms_test/presentation/pages/edit_profile.dart";
import "package:wms_test/presentation/pages/events.dart";
import "package:wms_test/presentation/pages/login.dart";

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: context.palette.background,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 44),
          child: Column(spacing: 32, children: [
            Column(
              spacing: 22,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 90,
                      width: 90,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                        child: Image.asset(
                            fit: BoxFit.cover,
                            "assets/images/profile_picture.jpg"),
                      ),
                    ),
                  ],
                ),
                Column(
                  spacing: 8,
                  children: [
                    Row(children: [
                      Text("Фамилия Имя Отчество",
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  color: context.palette.text,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700)))
                    ]),
                    Row(children: [
                      Text("example@mail.ru",
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  color: context.palette.text,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500)))
                    ])
                  ],
                ),
              ],
            ),
            Column(spacing: 22, children: [
              GestureDetector(
                  onTap: () {
                    Get.to(EditProfilePage());
                  },
                  child: CustomListEntry(
                      iconPath: "assets/icons/list_profile.svg",
                      text: "Редактировать профиль")),
              GestureDetector(
                  onTap: () {
                    Get.to(EventsPage());
                  },
                  child: CustomListEntry(
                      iconPath: "assets/icons/list_events.svg",
                      text: "События")),
              CustomListEntry(
                  iconPath: "assets/icons/list_notifications.svg",
                  text: "Уведомления"),
              CustomListEntry(
                  iconPath: "assets/icons/list_settings.svg",
                  text: "Настройки"),
              CustomListEntry(
                  iconPath: "assets/icons/list_attach.svg",
                  text: "Прикрепить документ"),
            ]),
            GestureDetector(
              onTap: () {
                Get.offAll(LoginPage());
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border(top: BorderSide(color: Color(0x3BF7F7F9)))),
                padding: EdgeInsets.only(top: 18),
                child: Row(
                    spacing: 14,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset("assets/icons/list_exit.svg",
                          width: 22.44,
                          height: 18,
                          colorFilter: ColorFilter.mode(
                              context.palette.text, BlendMode.srcIn)),
                      Text("Выйти",
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  color: context.palette.text,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500)))
                    ]),
              ),
            )
          ]),
        ));
  }
}
