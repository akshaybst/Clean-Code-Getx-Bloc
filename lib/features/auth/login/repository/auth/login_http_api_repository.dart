
part of 'auth_repository.dart';

class AuthHttpApiRepository implements AuthApiRepository{
  final DioHelper _dioHelper = DioHelper();

  @override
  Future<UserModel> loginRepo(String username, String password) async {
    final requestModel = LoginRequestModel(username: username, password: password);
    final response = await _dioHelper.postApi(
      url: ApiConstants.LOGIN_API,
      reqBody: requestModel.toJson(),
    );
    if(response.statusCode == 200){
      return UserModel.fromJson(response.data);
    }else {
      return UserModel(message: "Invalid credentials");
    }
  }
}