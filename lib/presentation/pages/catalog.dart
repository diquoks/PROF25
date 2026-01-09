import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:matule/presentation/pages/cart.dart';
import 'package:matule_query/matule_query.dart';
import 'package:matule_uikit/matule_uikit.dart';

import '../../main.dart';

class CatalogPage extends StatefulWidget {
  const CatalogPage({super.key});

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
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
          SizedBox(height: 200.h),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
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
                return SizedBox(height: 12.h);
              },
              itemCount: productList.length,
            ),
          ),
          Container(
            width: 375.w,
            height: 120.h,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 32.h),
            color: theme.palette.whiteOld,
            child: BigButtonWidget.filled(
              theme: theme,
              onTap: () {
                Get.to(CartPage());
              },
              text: "В корзину",
            ),
          ),
        ],
      ),
    );
  }
}
