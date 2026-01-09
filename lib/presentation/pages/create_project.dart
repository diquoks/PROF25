import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:matule/main.dart';
import 'package:matule/presentation/pages/tabbar.dart';
import 'package:matule_query/matule_query.dart';
import 'package:matule_uikit/matule_uikit.dart';

class CreateProjectPage extends StatefulWidget {
  const CreateProjectPage({super.key});

  @override
  State<CreateProjectPage> createState() => _CreateProjectPageState();
}

class _CreateProjectPageState extends State<CreateProjectPage> {
  final TextEditingController typeController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController startController = TextEditingController();
  final TextEditingController endController = TextEditingController();
  final TextEditingController toController = TextEditingController();
  final TextEditingController sourceController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var theme = CustomTheme.of(context);
    return Scaffold(
      backgroundColor: theme.palette.whiteOld,
      bottomNavigationBar: TabbarWidget(
        onTap: (int index) {
          Get.offAll(TabbarPage(defaultIndex: index));
        },
        currentIndex: 2,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 74.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: SizedBox(
                  width: 335.w,
                  height: 48.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Создать проект",
                            style: theme.styles.title2Semibold20.copyWith(
                              color: theme.palette.blackOld,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 1.sw, height: 1.h),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 13.h),
              Padding(
                padding: EdgeInsets.only(right: 19.w, left: 21.w),
                child: InputWidget(
                  label: "Тип",
                  hint: "Выберите тип",
                  error: "",
                  controller: typeController,
                ),
              ),
              SizedBox(height: 16.h),
              Padding(
                padding: EdgeInsets.only(right: 19.w, left: 21.w),
                child: InputWidget(
                  label: "Название проекта",
                  hint: "Введите имя",
                  error: "",
                  controller: nameController,
                ),
              ),
              SizedBox(height: 16.h),
              Padding(
                padding: EdgeInsets.only(right: 19.w, left: 21.w),
                child: InputWidget(
                  label: "Дата начала",
                  hint: "--.--.----",
                  error: "",
                  controller: endController,
                ),
              ),
              SizedBox(height: 22.h),
              Padding(
                padding: EdgeInsets.only(right: 19.w, left: 21.w),
                child: InputWidget(
                  label: "Дата окончания",
                  hint: "--.--.----",
                  error: "",
                  controller: toController,
                ),
              ),
              SizedBox(height: 16.h),
              Padding(
                padding: EdgeInsets.only(right: 17.w, left: 23.w),
                child: InputWidget(
                  label: "Источник описания",
                  hint: "exmaple.com",
                  error: "",
                  controller: sourceController,
                ),
              ),
              SizedBox(height: 17.h),
              Padding(
                padding: EdgeInsets.only(right: 19.w, left: 21.w),
                child: InputWidget(
                  label: "Категория",
                  hint: "Выберите категорию",
                  error: "",
                  controller: categoryController,
                ),
              ),
              SizedBox(height: 261.h),
              BigButtonWidget.filled(
                theme: theme,
                onTap: () {
                  useCase.addProject(
                    ProjectModel(
                      title: nameController.text,
                      typeProject: typeController.text,
                      userId: "",
                      dateStart: startController.text,
                      dateEnd: endController.text,
                      gender: toController.text,
                      descriptionSource: sourceController.text,
                      category: categoryController.text,
                      image: "",
                    ),
                    (obj) {
                      Get.back();
                    },
                    eC.cE,
                  );
                },
                text: "Подтвердить",
              ),
              SizedBox(height: 15.h),
            ],
          ),
        ),
      ),
    );
  }
}
