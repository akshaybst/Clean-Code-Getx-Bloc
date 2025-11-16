import 'package:bloc/bloc.dart';
import 'package:clean_code_getx_bloc_mvvm/routes/app_routes.dart';
import 'package:clean_code_getx_bloc_mvvm/services/storage_service.dart';
import 'package:clean_code_getx_bloc_mvvm/utils/enums.dart';
import 'package:equatable/equatable.dart';
import 'package:get/get.dart';
import '../repository/auth/auth_repository.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  AuthApiRepository authRepository;
  LoginBloc({required this.authRepository}) : super(LoginInitial()) {
    on<UsernameChange>(_onUsernameChange);
    on<PasswordChange>(_onPasswordChange);
    on<LoginApi>(_onLoginApi);
  }

  void _onUsernameChange(UsernameChange event, Emitter<LoginState> emit) {
    emit(
      state.copyWith(username: event.username),
    );
  }

  void _onPasswordChange(PasswordChange event, Emitter<LoginState> emit) {
    emit(
      state.copyWith(password: event.password),
    );
  }

  void _onLoginApi(LoginApi event, Emitter<LoginState> emit) async {
    emit(
      state.copyWith(postApiStatus: PostApiStatus.loading),
    );
    await authRepository.loginRepo(state.username.trim(), state.password.trim()).then((value) async {
      if(value.message.isNotEmpty){
        emit(
          state.copyWith(message: value.message.toString(), postApiStatus: PostApiStatus.error),
        );
      }else {
        await StorageService.saveUser(
          userId: value.id,
          name: "${value.firstName} ${value.lastName}",
          email: value.email,
          token: value.accessToken,
        );
        emit(
          state.copyWith(message: "Login Successfully!!", postApiStatus: PostApiStatus.success),
        );
        Get.offAllNamed(Routes.home);
      }
    }).onError((error, stackTrace) {
      emit(
        state.copyWith(message: error.toString(), postApiStatus: PostApiStatus.error),
      );
    });
  }
}
