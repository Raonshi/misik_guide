import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:misik_guide/secrets/firebase_config.dart';

class UserRepository {
  final CollectionReference<Map<String, dynamic>> _userCollection = FirebaseFirestore.instance.collection(userColRef);

  Future<void> postUser(User user, String profileImageUrl) async {
    DocumentReference ref = _userCollection.doc(user.uid);
    await ref.set(
      {
        "uid": ref.id,
        "name": user.displayName,
        "email": user.email,
        "image": profileImageUrl,
      },
    );
  }

  //TODO: 반환타입 모델 정의해야함.
  Future<void> getUser(String uid) async {}

  Future<bool> searchUser(String email) async {
    return await _userCollection.where("email", isEqualTo: email).get().then((value) => value.docs.isNotEmpty);
  }
}
