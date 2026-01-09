import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:matule_query/matule_query.dart';
import 'package:matule_uikit/matule_uikit.dart';

import '../../main.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<CartModel> cartItem = [];
  final ProductModel productItem = storageUseCase.getProductItem();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      useCase.getProductList((List<ProductModel> obj) {
        useCase.addCart(
          CreateCartModel(
            userId: useCase.getAuth()!.record.id,
            productId: obj[0].id,
            count: 7,
          ),
          (obj) {
            setState(() {
              cartItem = [obj];
            });
          },
          eC.cE,
        );
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
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 144.h),
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 32.h),
                itemBuilder: (BuildContext context, int index) {
                  return CartCardWidget(
                    theme: theme,
                    label: productItem.title,
                    price: productItem.price,
                    count: cartItem[index].count,
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 16.h);
                },
                itemCount: cartItem.length,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Сумма",
                  style: theme.styles.title2Semibold20.copyWith(
                    color: theme.palette.blackOld,
                  ),
                ),
                Text(
                  "${productItem.price} ₽",
                  style: theme.styles.title2Semibold20.copyWith(
                    color: theme.palette.blackOld,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 148.h),
            child: Container(
              width: 375.w,
              height: 120.h,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 32.h),
              color: theme.palette.whiteOld,
              child: BigButtonWidget.filled(
                theme: theme,
                onTap: () {
                  useCase.createOrder(cartItem[0], (obj) {
                    Get.back();
                  }, eC.cE);
                },
                text: "Перейти к оформлению заказа",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
