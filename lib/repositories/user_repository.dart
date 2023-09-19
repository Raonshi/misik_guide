import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:misik_guide/data/app_user/app_user_model.dart';
import 'package:misik_guide/secrets/firebase_config.dart';

class UserRepository {
  final CollectionReference<Map<String, dynamic>> _userCollection = FirebaseFirestore.instance.collection(userColRef);

  Future<void> postUser(User user, String? profileImageUrl) async {
    try {
      DocumentReference ref = _userCollection.doc(user.uid);
      await ref.set(
        {
          "uid": ref.id,
          "name": user.displayName ?? "Newbie_${ref.id.substring(0, 8)}",
          "email": user.email,
          "image": profileImageUrl,
        },
      );
    } catch (e) {
      throw Exception(e);
    }
  }

  /// 앱 유저 데이터 정보 조회
  Future<AppUser?> getUser(String uid) async {
    return await _userCollection.doc(uid).get().then((value) {
      if (value.data() == null) return null;
      return AppUser.fromJson(value.data()!);
    });
  }

  /// 유저 가입여부 조회
  Future<bool> checkUser(String uid) async {
    return await _userCollection.doc(uid).get().then((value) => value.data() != null);
  }
}
