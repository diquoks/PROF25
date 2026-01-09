import 'package:flutter/material.dart';
import 'package:matule/presentation/pages/catalog.dart';
import 'package:matule/presentation/pages/home.dart';
import 'package:matule/presentation/pages/profile.dart';
import 'package:matule/presentation/pages/projects.dart';
import 'package:matule_uikit/matule_uikit.dart';

class TabbarPage extends StatefulWidget {
  final int? defaultIndex;

  const TabbarPage({super.key, this.defaultIndex});

  @override
  State<TabbarPage> createState() => _TabbarPageState();
}

class _TabbarPageState extends State<TabbarPage> {
  int? currentIndex;

  @override
  Widget build(BuildContext context) {
    var theme = CustomTheme.of(context);
    setState(() {
      currentIndex ??= widget.defaultIndex ?? 0;
    });
    return Scaffold(
      backgroundColor: theme.palette.whiteOld,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: TabbarWidget(
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex!,
      ),
      body: [
        HomePage(),
        CatalogPage(),
        ProjectsPage(),
        ProfilePage(),
      ][currentIndex!],
    );
  }
}
