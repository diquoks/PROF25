import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import "package:dio/dio.dart";
import 'package:matule_query/matule_query.dart';

String get testString => DateTime.now().millisecondsSinceEpoch.toString();

Options get options => Options(headers: {});

BaseUseCase useCase = BaseUseCase(startLoading: () {}, endLoading: () {});

onResponse(Object? obj) {
  stdout.writeln(obj.toString());
  assert(true);
}

onError(Exception e) {
  fail(e.toString());
}

final String _email = "example@test.russ";
final String _password = "stringss";
final String _userId = "04x5y9723nycs2q";
final String _productId = "45urlx4rj907rrk";

void main() {
  group("Query", () {
    late CartModel cartModel;
    test("CreateUser", () async {
      late final AuthModel authModel;
      final String testEmail = "$testString@test.test";
      await useCase.signup(
        testEmail,
        _password,
        _password,
        (obj) => onResponse(obj),
        onError,
      );
      await useCase.login(testEmail, _password, (obj) {
        authModel = obj;
        onResponse(obj);
      }, onError);
      await useCase.editProfile(
        authModel.record.id,
        authModel.record.email,
        true,
        "firstName",
        "lastName",
        "secondName",
        "dateBirthday",
        "gender",
        onResponse,
        onError,
      );
    });
    test("Authorization", () async {
      await useCase.login(
        _email,
        _password,
        (obj) => onResponse(obj),
        (e) => onError(e),
      );
    });
    test("ProductList", () async {
      await useCase.getProductList(onResponse, onError);
    });
    test("SearchProductList", () async {
      await useCase.searchProductList("Рубашка Среда", onResponse, onError);
    });
    test("GetProduct", () async {
      await useCase.getProduct(_productId, onResponse, onError);
    });
    test("NewsList", () async {
      await useCase.getNewsList(onResponse, onError);
    });
    test("ProjectList", () async {
      await useCase.getProjectList(onResponse, onError);
    });
    test("AddProject", () async {
      await useCase.addProject(
        ProjectModel(
          title: testString,
          typeProject: testString,
          userId: "",
          dateStart: testString,
          dateEnd: testString,
          gender: testString,
          descriptionSource: testString,
          category: testString,
          image: "",
        ),
        onResponse,
        onError,
      );
    });
    test("AddCart", () async {
      await useCase.addCart(
        CreateCartModel(userId: _userId, productId: _productId, count: 7),
        (obj) {
          cartModel = obj;
          onResponse(obj);
        },
        onError,
      );
    });
    test("EditCart", () async {
      await useCase.editCart(
        CartModel(
          id: cartModel.id,
          userId: _userId,
          productId: _productId,
          count: 8,
        ),
        onResponse,
        onError,
      );
    });
    test("CreateOrder", () async {
      await useCase.createOrder(
        CartModel(
          id: cartModel.id,
          userId: _userId,
          productId: _productId,
          count: 8,
        ),
        onResponse,
        onError,
      );
    });
  });
}
