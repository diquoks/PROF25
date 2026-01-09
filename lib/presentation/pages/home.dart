// Назначение файла: BottomNavigationBar со ссылками на остальные экраны
// Дата создания: 26.02.25
// Автор: participant1 (Титовец Д. В.)

import "package:google_fonts/google_fonts.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:flutter/material.dart";

import "package:wms_test/presentation/theme/extension.dart";

import "package:wms_test/presentation/pages/warehouses.dart";
import "package:wms_test/presentation/pages/accounts.dart";
import "package:wms_test/presentation/pages/cards.dart";
import "package:wms_test/presentation/pages/profile.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 1;
  List pages = [
    WarehousesPage(),
    AccountsPage(),
    CardsPage(),
    null,
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: context.palette.background,
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: context.palette.sideMenu,
          showUnselectedLabels: false,
          selectedItemColor: context.palette.text,
          selectedLabelStyle: GoogleFonts.inter(
              textStyle: TextStyle(
                  color: context.palette.text,
                  fontSize: 12,
                  fontWeight: FontWeight.w500)),
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/warehouse.svg",
                    colorFilter: ColorFilter.mode(
                        currentIndex == 0
                            ? context.palette.accent
                            : context.palette.icon,
                        BlendMode.srcATop)),
                label: "Склады"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/key_vertical.svg",
                    colorFilter: ColorFilter.mode(
                        currentIndex == 1
                            ? context.palette.accent
                            : context.palette.icon,
                        BlendMode.srcATop)),
                label: "Кабинеты"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/view_agenda.svg",
                    colorFilter: ColorFilter.mode(
                        currentIndex == 2
                            ? context.palette.accent
                            : context.palette.icon,
                        BlendMode.srcATop)),
                label: "Карточки"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/docs.svg",
                    colorFilter: ColorFilter.mode(
                        currentIndex == 3
                            ? context.palette.accent
                            : context.palette.icon,
                        BlendMode.srcATop)),
                label: "Описания"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/person.svg",
                    colorFilter: ColorFilter.mode(
                        currentIndex == 4
                            ? context.palette.accent
                            : context.palette.icon,
                        BlendMode.srcATop)),
                label: "Профиль"),
          ],
          selectedIconTheme: IconThemeData(),
        ));
  }
}
