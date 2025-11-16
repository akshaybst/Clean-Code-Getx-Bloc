
import 'package:clean_code_getx_bloc_mvvm/features/auth/login/login_bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserNameInputWidget extends StatelessWidget {
  final FocusNode userNameFocusNode;
  const UserNameInputWidget({Key? key, required this.userNameFocusNode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (current, previous) => current.username != previous.username,
      builder: (context, state) {
        return TextFormField(
          keyboardType: TextInputType.text,
          focusNode: userNameFocusNode,
          decoration: const InputDecoration(label: Text("User name"), border: OutlineInputBorder()),
          onChanged: (value) {
            context.read<LoginBloc>().add(UsernameChange(username: value));
          },
          validator: (value) {
            if(value!.isEmpty){
              return "Enter User name";
            }
            return null;
          },
          onFieldSubmitted: (value) {},
        );
      }
    );
  }
}
