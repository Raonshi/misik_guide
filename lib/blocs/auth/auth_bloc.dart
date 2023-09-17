import 'package:bloc/bloc.dart';
import 'package:misik_guide/blocs/auth/auth_state.dart';

class AuthBloc extends Cubit<AuthState> {
  AuthBloc() : super(AuthState.initial());

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
