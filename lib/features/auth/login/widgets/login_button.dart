import 'package:clean_code_getx_bloc_mvvm/utils/enums.dart';
import 'package:clean_code_getx_bloc_mvvm/utils/animation_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../login_bloc/login_bloc.dart';

class LoginButtonWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const LoginButtonWidget({Key? key, required this.formKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listenWhen: (current, previous) => current.postApiStatus != previous.postApiStatus,
      listener: (context, state) {
        if (state.postApiStatus == PostApiStatus.success) {
          AnimationSnackBar().openSnackBar(context: context, message: state.message.toString(), type: SnackBarType.success);
        }
        if (state.postApiStatus == PostApiStatus.loading) {
          AnimationSnackBar().openSnackBar(context: context, message: "Submitting...", type: SnackBarType.info);
        }
      },
      child: BlocBuilder<LoginBloc, LoginState>(
          buildWhen: (current, previous) => current.postApiStatus != previous.postApiStatus,
          builder: (context, state) {
            return ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                backgroundColor: Colors.teal,
              ),
              onPressed: (){
                if(formKey.currentState!.validate()) {
                  context.read<LoginBloc>().add(LoginApi());
                }
              },
              child: state.postApiStatus == PostApiStatus.loading ? const CircularProgressIndicator() : const Text("Login"),
            );
          }
      ),
    );
  }
}
