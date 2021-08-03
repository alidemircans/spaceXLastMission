import 'package:appnation/repository/api_service_repository.dart';
import 'package:appnation/services/api_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

setupLocator() {
  locator.registerLazySingleton(() => ApiService());
  locator.registerLazySingleton(() => ApiServiceRepository());

  }