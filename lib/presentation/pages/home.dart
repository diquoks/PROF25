import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:matule/main.dart';
import 'package:matule_query/matule_query.dart';
import 'package:matule_uikit/matule_uikit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ProductModel> productList = [];

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      useCase.getProductList((obj) {
        setState(() {
          productList = obj;
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
          SizedBox(height: 460.h),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
              itemBuilder: (BuildContext context, int index) {
                return PrimaryCardWidget(
                  theme: theme,
                  label: productList[index].title,
                  category: productList[index].type,
                  price: productList[index].price,
                  added: false,
                  onAdd: () {},
                  onRemove: () {},
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: 16.h);
              },
              itemCount: productList.length,
            ),
          ),
        ],
      ),
    );
  }
}
