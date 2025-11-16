import 'package:clean_code_getx_bloc_mvvm/dependency_injection/locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/auth/login/login_bloc/login_bloc.dart';

class BlocProvidersManager {
  static List<BlocProvider> getProviders() {
    return [
      BlocProvider<LoginBloc>(create: (_) => LoginBloc(authRepository: getIt())),
    ];
  }
}
