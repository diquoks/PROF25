import 'package:dio/dio.dart';

import '../../../matule_query.dart';

class Client extends Repository {
  @override
  String get apiUrl => "https://api.matule.ru/api";

  AuthModel? authModel;

  Options get options => Options(
    headers: {
      if (authModel != null) "Authorization": "Bearer ${authModel!.token}",
    },
  );

  @override
  Future<AuthModel> login(String identity, String password) async {
    Response response = await dio.post(
      "$apiUrl/collections/users/auth-with-password",
      data: {"identity": identity, "password": password},
    );
    authModel = AuthModel.fromJSON(response.data);
    return authModel!;
  }

  @override
  Future<MetadataModel> signup(
    String email,
    String password,
    String passwordConfirm,
  ) async {
    Response response = await dio.post(
      "$apiUrl/collections/users/records",
      data: {
        "email": email,
        "password": password,
        "passwordConfirm": passwordConfirm,
      },
    );
    return MetadataModel.fromJSON(response.data);
  }

  @override
  Future<MetadataModel> editProfile(
    String id,
    String? email,
    bool? emailVisibility,
    String? firstName,
    String? lastName,
    String? secondName,
    String? dateBirthday,
    String? gender,
  ) async {
    Response response = await dio.patch(
      "$apiUrl/collections/users/records/$id",
      options: options,
      data: FormData.fromMap({
        "email": email,
        "emailVisibility": emailVisibility,
        "firstname": firstName,
        "lastname": lastName,
        "secondname": secondName,
        "datebirthday": dateBirthday,
        "gender": gender,
      }),
    );
    return MetadataModel.fromJSON(response.data);
  }

  @override
  Future<List<ProductModel>> getProductList() async {
    Response response = await dio.get(
      "$apiUrl/collections/products/records",
      options: options,
    );
    return (response.data["items"] as List)
        .map((e) => ProductModel.fromJSON(e))
        .toList();
  }

  @override
  Future<List<ProductModel>> searchProductList(String search) async {
    Response response = await dio.get(
      "$apiUrl/collections/products/records",
      options: options,
      queryParameters: {"filter": "(title ?~ '$search')"},
    );
    return (response.data["items"] as List)
        .map((e) => ProductModel.fromJSON(e))
        .toList();
  }

  @override
  Future<ProductModel> getProduct(String id) async {
    Response response = await dio.get(
      "$apiUrl/collections/products/records/$id",
      options: options,
    );
    return ProductModel.fromJSON(response.data);
  }

  @override
  Future<List<NewsModel>> getNewsList() async {
    Response response = await dio.get(
      "$apiUrl/collections/news/records",
      options: options,
    );
    return (response.data["items"] as List)
        .map((e) => NewsModel.fromJSON(e))
        .toList();
  }

  @override
  Future<List<ProjectModel>> getProjectList() async {
    Response response = await dio.get(
      "$apiUrl/collections/project/records",
      options: options,
    );
    return (response.data["items"] as List)
        .map((e) => ProjectModel.fromJSON(e))
        .toList();
  }

  @override
  Future<ProjectModel> addProject(ProjectModel projectModel) async {
    Response response = await dio.post(
      "$apiUrl/collections/project/records",
      options: options,
      data: projectModel.toJSON(),
    );
    return ProjectModel.fromJSON(response.data);
  }

  @override
  Future<CartModel> addCart(CreateCartModel createCartModel) async {
    Response response = await dio.post(
      "$apiUrl/collections/cart/records",
      options: options,
      data: createCartModel.toJSON(),
    );
    return CartModel.fromJSON(response.data);
  }

  @override
  Future<CartModel> editCart(CartModel cartModel) async {
    Response response = await dio.patch(
      "$apiUrl/collections/cart/records/${cartModel.id}",
      options: options,
      data: {
        "user_id": cartModel.userId,
        "product_id": cartModel.productId,
        "count": cartModel.count,
      },
    );
    return CartModel.fromJSON(response.data);
  }

  @override
  Future<CartModel> createOrder(CartModel cartModel) async {
    Response response = await dio.post(
      "$apiUrl/collections/orders/records",
      options: options,
      data: {
        "user_id": cartModel.userId,
        "product_id": cartModel.productId,
        "count": cartModel.count,
      },
    );
    return CartModel.fromJSON(response.data);
  }
}
