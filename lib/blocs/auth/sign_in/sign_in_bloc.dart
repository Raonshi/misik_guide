import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:misik_guide/blocs/auth/sign_in/sign_in_state.dart';
import 'package:misik_guide/repositories/user_repository.dart';

class SignInBloc extends Cubit<SignInState> {
  final UserRepository _userRepo = UserRepository();

  SignInBloc() : super(SignInState.initial());

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

  Future<bool> checkIsSignedUp() async => await _userRepo.searchUser(state.email);

  void onClickSignIn() async {
    UserCredential credential =
        await FirebaseAuth.instance.signInWithEmailAndPassword(email: state.email, password: state.password);
    if (credential.user == null) return;

    await _userRepo.getUser(credential.user!.uid);
    //TODO: 유저 정보 정확하면 HomePage로 이동
  }
}
