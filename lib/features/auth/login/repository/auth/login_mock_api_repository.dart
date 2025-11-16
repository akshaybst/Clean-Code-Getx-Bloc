
part of 'auth_repository.dart';

class LoginMockApiRepository extends AuthApiRepository{
  final DioHelper _dioHelper = DioHelper();

  @override
  Future<UserModel> loginRepo(String username, String password) async {
    final requestModel = LoginRequestModel(username: "emilys", password: "emilyspass");
    final response = await _dioHelper.postApi(
      url: ApiConstants.LOGIN_API,
      reqBody: requestModel.toJson(),
    );
    /// or 
    // final response = {
    //   "accessToken": "eyJhbGciOiJIUzI1bH",
    //   "refreshToken": "ezOi8vZHfuqxg",
    //   "id": 1,
    //   "username": "dummy",
    //   "email": "dummyjson@gmail.com",
    //   "firstName": "Dummy",
    //   "lastName": "Data",
    //   "gender": "female",
    //   "image": "https://dummyjson.com/icon/emilys/128"
    // };

    if(response.statusCode == 200){
      return UserModel.fromJson(response.data);
    }else {
      return UserModel(message: "Invalid credentials");
    }
  }
}