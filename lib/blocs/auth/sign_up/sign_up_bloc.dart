import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:image_picker/image_picker.dart';
import 'package:misik_guide/blocs/auth/sign_up/sign_up_state.dart';
import 'package:misik_guide/repositories/file_repository.dart';
import 'package:misik_guide/repositories/user_repository.dart';

class SignUpBloc extends Cubit<SignUpState> {
  final FileRepository _fileRepo = FileRepository();
  final UserRepository _userRepo = UserRepository();

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

  /// 회원가입한다.
  Future<bool> signUp() async {
    if (state.canSignUp) {
      try {
        UserCredential credential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(email: state.email, password: state.password);
        if (credential.user == null) return false;

        late final String? imgUrl;
        if (state.imageBytes.isNotEmpty) {
          imgUrl = await _fileRepo.postProfileImage(credential.user!.uid, Uint8List.fromList(state.imageBytes));
        }
        await _userRepo.postUser(credential.user!, imgUrl);
        return true;
      } catch (e) {
        rethrow;
      }
    } else {
      return false;
    }
  }
}
