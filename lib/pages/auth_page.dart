import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:misik_guide/blocs/auth/auth_bloc.dart';
import 'package:misik_guide/blocs/auth/auth_state.dart';
import 'package:misik_guide/utils/dialog.dart';
import 'package:misik_guide/utils/validation.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: _AuthPageBody(),
    );
  }
}

class _AuthPageBody extends StatelessWidget {
  late final GlobalKey<FormState> _formKey;
  _AuthPageBody() {
    _formKey = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.grey,
                  alignment: Alignment.center,
                  child: const Text("logo here"),
                ),
                const SizedBox(height: 48.0),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text("email"),
                        ),
                        validator: (value) => validateDomainEmail(value, "rsupport.com"),
                      ),
                      const SizedBox(height: 32.0),
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text("password"),
                        ),
                        validator: (value) => validatePassword(value),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24.0),
                BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
                  return IntrinsicHeight(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Checkbox.adaptive(
                              value: state.checkSaveEmail,
                              onChanged: context.read<AuthBloc>().onCheckSaveEmail,
                            ),
                            const Text("saveEmail"),
                          ],
                        ),
                        const VerticalDivider(indent: 10.0, endIndent: 10.0),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Checkbox.adaptive(
                              value: state.checkAutoSignIn,
                              onChanged: context.read<AuthBloc>().onCheckAutoSignIn,
                            ),
                            const Text("autoSignIn"),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
                const SizedBox(height: 48.0),
                ElevatedButton(
                  onPressed: () {
                    bool validationResult = _formKey.currentState?.validate() ?? false;
                    if (validationResult) {
                    } else {
                      showInfoDialog(context, "signInFailed");
                    }
                  },
                  child: const Text("signIn"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
