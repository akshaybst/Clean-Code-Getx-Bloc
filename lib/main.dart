import 'package:clean_code_getx_bloc_mvvm/routes/app_pages.dart';
import 'package:clean_code_getx_bloc_mvvm/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'core/bindings/app_binding.dart';
import 'core/bloc/bloc_providers.dart';
import 'dependency_injection/locator.dart';
import 'screens/not_found/not_found_view.dart';
import 'services/storage_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ServiceLocator().servicesLocator();
  StorageService.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: BlocProvidersManager.getProviders(),
      child: GetMaterialApp(
        initialBinding: AppBinding(),
        initialRoute: Routes.splash,
        getPages: AppPages.routes,
        onUnknownRoute: (settings) {
          return GetPageRoute(
            settings: settings,
            page: () => const NotFoundView(),
          );
        },
        debugShowCheckedModeBanner: false,
        title: 'Bloc + GetX App',
      ),
    );
  }
}
