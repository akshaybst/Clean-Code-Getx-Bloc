import 'package:clean_code_getx_bloc_mvvm/constants/api_constants.dart';
import 'package:clean_code_getx_bloc_mvvm/core/api_manager/dio_helper.dart';
import 'package:clean_code_getx_bloc_mvvm/features/auth/model/login_req_model.dart';
import 'package:clean_code_getx_bloc_mvvm/features/auth/user_model/user_model.dart';
part 'login_http_api_repository.dart';
part 'login_mock_api_repository.dart';

/// Abstract contract
abstract class AuthApiRepository {
  Future<UserModel> loginRepo(String username, String password);
}

