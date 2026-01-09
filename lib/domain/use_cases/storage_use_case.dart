import 'package:matule_query/matule_query.dart';

import '../../main.dart';

class StorageUseCase {
  ProductModel getProductItem() => storage.productItem;
  String getAppMetrikaToken() => storage.appMetrikaToken;
}
