import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';
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

  void onClickProfileImageFromCamera() async {
    ImagePicker picker = ImagePicker();
    XFile? imageFile = await picker.pickImage(source: ImageSource.camera);
    await _updateImage(imageFile);
  }

  void onClickProfileImageFromGallery() async {
    ImagePicker picker = ImagePicker();
    XFile? imageFile = await picker.pickImage(source: ImageSource.gallery);
    await _updateImage(imageFile);
  }

  Future<void> _updateImage(XFile? newImageFile) async {
    if (newImageFile == null) return;

    List<int> imageBytes = await newImageFile.readAsBytes();
    emit(state.copyWith(imageBytes: imageBytes));
  }

  void onRemoveProfileImage() {
    emit(state.copyWith(imageBytes: []));
  }
}
