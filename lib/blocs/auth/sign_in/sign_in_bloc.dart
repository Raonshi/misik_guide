import 'package:bloc/bloc.dart';
import 'package:misik_guide/blocs/auth/sign_in/sign_in_state.dart';

class SignInBloc extends Cubit<SignInState> {
  SignInBloc() : super(SignInState.initial());

  void onCheckSaveEmail(bool? value) {
    emit(state.copyWith(checkSaveEmail: value ?? false));
  }

  void onCheckAutoSignIn(bool? value) {
    emit(state.copyWith(checkAutoSignIn: value ?? false));
  }

  void onClickSignIn() {
    emit(state.copyWith(isSignedIn: true));
  }
}
