
import 'dependency_injection.dart';

GetIt getIt = GetIt.instance;

class ServiceLocator {
  void servicesLocator() {
    getIt.registerLazySingleton<AuthApiRepository>(() => AuthHttpApiRepository());
  }

}
