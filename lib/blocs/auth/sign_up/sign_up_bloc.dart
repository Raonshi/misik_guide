import 'package:bloc/bloc.dart';
import 'package:misik_guide/blocs/auth/sign_up/sign_up_state.dart';

class SignUpBloc extends Cubit<SignUpState> {
  SignUpBloc() : super(SignUpState.initial());

  void onChangeEmail(String newEmail) {
    emit(state.copyWith(email: newEmail));
  }

  void onChangePassword(String newPassword) {
    emit(state.copyWith(password: newPassword));
  }

  void onChangeConfirmPassword(String newConfirmPassword) {
    emit(state.copyWith(confirmPassword: newConfirmPassword));
  }
}
