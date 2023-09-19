import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:misik_guide/blocs/auth/sign_in/sign_in_bloc.dart';
import 'package:misik_guide/blocs/auth/sign_in/sign_in_state.dart';
import 'package:misik_guide/common/utils/dialog.dart';
import 'package:misik_guide/common/utils/validation.dart';
import 'package:misik_guide/pages/auth/sign_up_page.dart';
import 'package:misik_guide/pages/home_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInBloc(),
      child: _SignInPageBody(),
    );
  }
}

class _SignInPageBody extends StatelessWidget {
  late final GlobalKey<FormState> _formKey;
  _SignInPageBody() {
    _formKey = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {
    context.read<SignInBloc>().init();

    return BlocListener<SignInBloc, SignInState>(
      listener: (context, state) {
        log("SignInPage : ${state.isSignedIn.toString()}");
        if (state.isSignedIn) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        }
      },
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          body: SingleChildScrollView(
            child: SafeArea(
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
                            onChanged: context.read<SignInBloc>().onChangeEmail,
                            validator: (value) => validateDomainEmail(value, "rsupport.com"),
                          ),
                          const SizedBox(height: 32.0),
                          TextFormField(
                            decoration: const InputDecoration(
                              label: Text("password"),
                            ),
                            obscureText: true,
                            onChanged: context.read<SignInBloc>().onChangePassword,
                            validator: (value) => validatePassword(value),
                          ),
                          const SizedBox(height: 32.0),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24.0),
                    BlocBuilder<SignInBloc, SignInState>(builder: (context, state) {
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
                                  onChanged: context.read<SignInBloc>().onCheckSaveEmail,
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
                                  onChanged: context.read<SignInBloc>().onCheckAutoSignIn,
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
                          context.read<SignInBloc>().onClickSignIn().then((value) {
                            if (value) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const HomePage()),
                              );
                            } else {
                              showInfoDialog(context, "signInFailed");
                            }
                          });
                        } else {
                          showInfoDialog(context, "signInFailed");
                        }
                      },
                      child: const Text("signIn"),
                    ),
                    const SizedBox(height: 24.0),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignUpPage()),
                        ).then((value) {
                          final bool isSignedUp = (value as bool?) ?? false;
                          if (isSignedUp) {
                            showInfoDialog(context, "succesSignUp");
                          }
                        });
                      },
                      child: const Text("signUp"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
