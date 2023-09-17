import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:misik_guide/blocs/auth/sign_in/sign_in_bloc.dart';
import 'package:misik_guide/blocs/auth/sign_in/sign_in_state.dart';
import 'package:misik_guide/blocs/auth/sign_up/sign_up_bloc.dart';
import 'package:misik_guide/blocs/auth/sign_up/sign_up_state.dart';
import 'package:misik_guide/utils/dialog.dart';
import 'package:misik_guide/utils/snackbar.dart';
import 'package:misik_guide/utils/validation.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpBloc(),
      child: _SignUpPageBody(),
    );
  }
}

class _SignUpPageBody extends StatelessWidget {
  late final GlobalKey<FormState> _formKey;
  _SignUpPageBody() {
    _formKey = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    const CircleAvatar(
                      radius: 50.0,
                      child: Icon(Icons.person, color: Colors.white, size: 50.0),
                    ),
                    IconButton.filled(
                      onPressed: () {
                        showInfoSnackbar(context, "show photo album or camera");
                      },
                      iconSize: 16.0,
                      visualDensity: VisualDensity.compact,
                      icon: const Icon(Icons.camera_enhance),
                    ),
                  ],
                ),
                const SizedBox(height: 48.0),
                Form(
                  key: _formKey,
                  child: BlocBuilder<SignUpBloc, SignUpState>(
                    builder: (context, state) {
                      return Column(
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                              label: Text("email"),
                            ),
                            onChanged: context.read<SignUpBloc>().onChangeEmail,
                            validator: (value) => validateDomainEmail(value, "rsupport.com"),
                          ),
                          const SizedBox(height: 32.0),
                          TextFormField(
                            decoration: const InputDecoration(
                              label: Text("password"),
                            ),
                            onChanged: context.read<SignUpBloc>().onChangePassword,
                            validator: (value) => validatePassword(value),
                          ),
                          const SizedBox(height: 32.0),
                          TextFormField(
                            decoration: const InputDecoration(
                              label: Text("confirmPassword"),
                            ),
                            onChanged: context.read<SignUpBloc>().onChangeConfirmPassword,
                            validator: (value) => validateConfirmPassword(value, state.password),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(height: 48.0),
                ElevatedButton(
                  onPressed: () {
                    bool validationResult = _formKey.currentState?.validate() ?? false;
                    if (validationResult) {
                      Navigator.pop(context, true);
                    } else {
                      showInfoDialog(context, "signUpFailed");
                    }
                  },
                  child: const Text("signUp"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
