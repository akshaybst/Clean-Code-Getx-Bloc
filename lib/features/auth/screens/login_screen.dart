
import 'package:clean_code_getx_bloc_mvvm/features/auth/login/widgets/login_button.dart';
import 'package:clean_code_getx_bloc_mvvm/features/auth/login/widgets/password_input_widget.dart';
import 'package:flutter/material.dart';
import '../login/widgets/username_input_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userNameFocusNode = FocusNode();
    final passwordFocusNode = FocusNode();
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(title: const Text("Login Screen"),),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UserNameInputWidget(userNameFocusNode: userNameFocusNode),
              const SizedBox(height: 15),
              PasswordInputWidget(passwordFocusNode: passwordFocusNode),
              const SizedBox(height: 40),
              LoginButtonWidget(formKey: formKey),
            ],
          ),
        ),
      ),
    );
  }
}
