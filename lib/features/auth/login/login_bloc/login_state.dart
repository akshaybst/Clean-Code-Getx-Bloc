part of 'login_bloc.dart';

class LoginState {
  final String username;
  final String password;
  final String message;
  final PostApiStatus postApiStatus;
  const LoginState({this.username = '', this.password = '', this.message = '', this.postApiStatus = PostApiStatus.initial});

    LoginState copyWith({
    String? username,
    String? password,
    String? message,
    PostApiStatus? postApiStatus,
  }) {
    return LoginState(
      username: username ?? this.username,
      password: password ?? this.password,
      message: message ?? this.message,
      postApiStatus: postApiStatus ?? this.postApiStatus,
    );
  }

  List<Object> get props => [username, password, message, postApiStatus];
}

class LoginInitial extends LoginState {}
