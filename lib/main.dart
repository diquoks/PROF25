import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:flutter/material.dart';
import 'package:matule/domain/services/exception_caster.dart';
import 'package:matule/domain/use_cases/storage_use_case.dart';
import 'package:matule/presentation/widgets/application.dart';
import 'package:matule_query/matule_query.dart';

import 'data/storage/storage.dart';

final Storage storage = Storage();
final StorageUseCase storageUseCase = StorageUseCase();
final BaseUseCase useCase = BaseUseCase(startLoading: () {}, endLoading: () {});
final ExceptionCaster eC = ExceptionCaster();

AppMetricaConfig get _config =>
    AppMetricaConfig(storageUseCase.getAppMetrikaToken(), logs: true);

Future<void> main() async {
  AppMetrica.runZoneGuarded(() {
    WidgetsFlutterBinding.ensureInitialized();
    AppMetrica.activate(_config);
    runApp(Application());
  });
}
