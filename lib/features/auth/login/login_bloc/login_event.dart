part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable{
  const  LoginEvent();

  @override
  List<Object> get props => [];
}

class UsernameChange extends LoginEvent {
  final String username;
  const UsernameChange({required this.username});

  @override
  List<Object> get props => [username];
}

class UsernameUnfocused extends LoginEvent { }

class PasswordChange extends LoginEvent {
  final String password;
  const PasswordChange({required this.password});

  @override
  List<Object> get props => [password];
}


class PasswordUnfocused extends LoginEvent { }

class LoginApi extends LoginEvent {

}


