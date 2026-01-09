import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:matule_query/matule_query.dart';
import 'package:matule_uikit/matule_uikit.dart';

import '../../main.dart';
import 'create_project.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  List<ProjectModel> projectList = [];

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      useCase.getProjectList((obj) {
        setState(() {
          projectList = obj;
        });
      }, eC.cE);
    });
  }

  @override
  Widget build(BuildContext context) {
    var theme = CustomTheme.of(context);
    return Scaffold(
      backgroundColor: theme.palette.whiteOld,
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 72.h),
          SmallHeaderWidget(
            theme: theme,
            title: "Проекты",
            onTap: () {
              Get.to(CreateProjectPage());
            },
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
              itemBuilder: (BuildContext context, int index) {
                return ProjectCardWidget(
                  theme: theme,
                  label: projectList[index].title,
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: 12.h);
              },
              itemCount: projectList.length,
            ),
          ),
        ],
      ),
    );
  }
}
