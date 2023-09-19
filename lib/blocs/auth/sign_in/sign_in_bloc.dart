import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:misik_guide/blocs/auth/sign_in/sign_in_state.dart';
import 'package:misik_guide/repositories/user_repository.dart';

class SignInBloc extends Cubit<SignInState> {
  final UserRepository _userRepo = UserRepository();

  SignInBloc() : super(SignInState.initial());

  void init() async {
    await Future.delayed(const Duration(milliseconds: 100));
    User? user = FirebaseAuth.instance.currentUser;
    log("SignInBloc : ${user?.uid.toString() ?? ""}");
    if (user != null) {
      emit(state.copyWith(isSignedIn: true));
    }
  }

  void onChangeEmail(String newEmail) {
    emit(state.copyWith(email: newEmail));
  }

  void onChangePassword(String newPassword) {
    emit(state.copyWith(password: newPassword));
  }

  void onCheckSaveEmail(bool? value) {
    emit(state.copyWith(checkSaveEmail: value ?? false));
  }

  void onCheckAutoSignIn(bool? value) {
    emit(state.copyWith(checkAutoSignIn: value ?? false));
  }

  Future<bool> checkIsSignedUp() async => await _userRepo.checkUser(state.email);

  Future<bool> onClickSignIn() async {
    UserCredential credential =
        await FirebaseAuth.instance.signInWithEmailAndPassword(email: state.email, password: state.password);
    if (credential.user == null) return false;
    bool signedIn = await _userRepo.checkUser(credential.user!.uid);

    emit(state.copyWith(isSignedIn: signedIn));
    return signedIn;
  }
}
