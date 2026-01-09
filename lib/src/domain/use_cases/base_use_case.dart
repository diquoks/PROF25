import 'package:matule_query/matule_query.dart';

class BaseUseCase {
  final Function() startLoading;
  final Function() endLoading;
  final QueryHelper helper;
  final Client client = Client();

  BaseUseCase({required this.startLoading, required this.endLoading})
    : helper = QueryHelper(startLoading: startLoading, endLoading: endLoading);

  AuthModel? getAuth() {
    return client.authModel;
  }

  Future<void> login(
    String identity,
    String password,
    Function(AuthModel) onResponse,
    Function(Exception) onError,
  ) async {
    await helper.request(
      () => client.login(identity, password),
      onResponse,
      onError,
    );
  }

  Future<void> signup(
    String email,
    String password,
    String passwordConfirm,
    Function(MetadataModel) onResponse,
    Function(Exception) onError,
  ) async {
    await helper.request(
      () => client.signup(email, password, passwordConfirm),
      onResponse,
      onError,
    );
  }

  Future<void> editProfile(
    String id,
    String? email,
    bool? emailVisibility,
    String? firstName,
    String? lastName,
    String? secondName,
    String? dateBirthday,
    String? gender,
    Function(MetadataModel) onResponse,
    Function(Exception) onError,
  ) async {
    await helper.request(
      () => client.editProfile(
        id,
        email,
        emailVisibility,
        firstName,
        lastName,
        secondName,
        dateBirthday,
        gender,
      ),
      onResponse,
      onError,
    );
  }

  Future<void> getProductList(
    Function(List<ProductModel>) onResponse,
    Function(Exception) onError,
  ) async {
    await helper.request(() => client.getProductList(), onResponse, onError);
  }

  Future<void> searchProductList(
    String search,
    Function(List<ProductModel>) onResponse,
    Function(Exception) onError,
  ) async {
    await helper.request(
      () => client.searchProductList(search),
      onResponse,
      onError,
    );
  }

  Future<void> getProduct(
    String id,
    Function(ProductModel) onResponse,
    Function(Exception) onError,
  ) async {
    await helper.request(() => client.getProduct(id), onResponse, onError);
  }

  Future<void> getNewsList(
    Function(List<NewsModel>) onResponse,
    Function(Exception) onError,
  ) async {
    await helper.request(() => client.getNewsList(), onResponse, onError);
  }

  Future<void> getProjectList(
    Function(List<ProjectModel>) onResponse,
    Function(Exception) onError,
  ) async {
    await helper.request(() => client.getProjectList(), onResponse, onError);
  }

  Future<void> addProject(
    ProjectModel projectModel,
    Function(ProjectModel) onResponse,
    Function(Exception) onError,
  ) async {
    await helper.request(
      () => client.addProject(projectModel),
      onResponse,
      onError,
    );
  }

  Future<void> addCart(
    CreateCartModel createCartModel,
    Function(CartModel) onResponse,
    Function(Exception) onError,
  ) async {
    await helper.request(
      () => client.addCart(createCartModel),
      onResponse,
      onError,
    );
  }

  Future<void> editCart(
    CartModel cartModel,
    Function(CartModel) onResponse,
    Function(Exception) onError,
  ) async {
    await helper.request(() => client.editCart(cartModel), onResponse, onError);
  }

  Future<void> createOrder(
    CartModel cartModel,
    Function(CartModel) onResponse,
    Function(Exception) onError,
  ) async {
    await helper.request(
      () => client.createOrder(cartModel),
      onResponse,
      onError,
    );
  }
}
