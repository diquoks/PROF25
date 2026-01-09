import 'package:dio/dio.dart';
import 'package:matule_query/matule_query.dart';

abstract class Repository {
  final Dio dio = Dio();
  abstract final String apiUrl;

  Future<AuthModel> login(String identity, String password);

  Future<MetadataModel> signup(
    String email,
    String password,
    String passwordConfirm,
  );

  Future<MetadataModel> editProfile(
    String id,
    String? email,
    bool? emailVisibility,
    String? firstName,
    String? lastName,
    String? secondName,
    String? dateBirthday,
    String? gender,
  );

  Future<List<ProductModel>> getProductList();

  Future<List<ProductModel>> searchProductList(String search);

  Future<ProductModel> getProduct(String id);

  Future<List<NewsModel>> getNewsList();

  Future<List<ProjectModel>> getProjectList();

  Future<ProjectModel> addProject(ProjectModel projectModel);

  Future<CartModel> addCart(CreateCartModel createCartModel);

  Future<CartModel> editCart(CartModel cartModel);

  Future<CartModel> createOrder(CartModel cartModel);
}
