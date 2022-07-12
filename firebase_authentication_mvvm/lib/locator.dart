import 'package:firebase_authentication_mvvm/services/dialog_service.dart';
import 'package:firebase_authentication_mvvm/services/navigation_service.dart';

import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => DialogService());
}
