import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:misik_guide/blocs/auth/sign_up/sign_up_bloc.dart';
import 'package:misik_guide/blocs/auth/sign_up/sign_up_state.dart';
import 'package:misik_guide/utils/dialog.dart';
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
                BlocBuilder<SignUpBloc, SignUpState>(builder: (context, state) {
                  return Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: CircleAvatar(
                          radius: 50.0,
                          backgroundImage:
                              state.imageBytes.isEmpty ? null : MemoryImage(Uint8List.fromList(state.imageBytes)),
                          child: state.imageBytes.isEmpty
                              ? const Icon(Icons.person, color: Colors.white, size: 50.0)
                              : null,
                        ),
                      ),
                      Column(
                        children: [
                          Visibility.maintain(
                            visible: state.imageBytes.isNotEmpty,
                            child: IconButton.filled(
                              onPressed: context.read<SignUpBloc>().onRemoveProfileImage,
                              iconSize: 16.0,
                              visualDensity: VisualDensity.compact,
                              icon: const Icon(Icons.close),
                            ),
                          ),
                          const SizedBox(height: 40.0),
                          IconButton.filled(
                            onPressed: () {
                              showActionDialog(
                                context,
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ElevatedButton(
                                      onPressed: context.read<SignUpBloc>().onClickProfileImageFromCamera,
                                      child: const Text("takePhotoFromCamera"),
                                    ),
                                    const SizedBox(height: 16.0),
                                    ElevatedButton(
                                      onPressed: context.read<SignUpBloc>().onClickProfileImageFromGallery,
                                      child: const Text("takePhotoFromGallery"),
                                    ),
                                  ],
                                ),
                              );
                            },
                            iconSize: 16.0,
                            visualDensity: VisualDensity.compact,
                            icon: const Icon(Icons.camera_enhance),
                          ),
                        ],
                      ),
                    ],
                  );
                }),
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
