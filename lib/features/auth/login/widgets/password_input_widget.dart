
import 'package:clean_code_getx_bloc_mvvm/utils/validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../login_bloc/login_bloc.dart';

class PasswordInputWidget extends StatelessWidget {
  final FocusNode passwordFocusNode;
  const PasswordInputWidget({Key? key, required this.passwordFocusNode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
        buildWhen: (current, previous) => current.password != previous.password,
        builder: (context, state) {
        return TextFormField(
          focusNode: passwordFocusNode,
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
          decoration: const InputDecoration(label: Text("Password"), border: OutlineInputBorder()),
          onChanged: (value) {
            context.read<LoginBloc>().add(PasswordChange(password: value));
          },
          validator:  Validations.validatePassword,
          onFieldSubmitted: (value) {},
        );
      }
    );
  }
}
