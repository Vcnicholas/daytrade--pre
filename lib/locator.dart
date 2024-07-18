import 'package:daytrade/data/core/services/navigation_service.dart';
import 'package:daytrade/splash/splash_vm.dart';
import 'package:get_it/get_it.dart';

import 'base/base_vm.dart';

final GetIt locator = GetIt.instance;

void setupLocator() {
  registerViewmodel();

    locator.registerLazySingleton<NavigationService>(() => NavigationService());
}

void registerViewmodel() {
  locator.registerFactory<BaseViewModel>(() => BaseViewModel());
    locator.registerFactory<SplashViewModel>(() => SplashViewModel());
}
