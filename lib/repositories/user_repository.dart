import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:misik_guide/secrets/firebase_config.dart';

class UserRepository {
  final CollectionReference<Map<String, dynamic>> _userCollection = FirebaseFirestore.instance.collection(userColRef);

  Future<void> postUser(User user, String profileImageUrl) async {
    DocumentReference ref = _userCollection.doc();
    await ref.set(
      {
        "name": user.displayName,
        "email": user.email,
        "image": profileImageUrl,
      },
    );
  }
}
