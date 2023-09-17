import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:misik_guide/secrets/firebase_config.dart';

class FileRepository {
  final Reference _rootRef = FirebaseStorage.instance.ref();

  Future<String?> postProfileImage(String imageName, Uint8List imageBytes) async {
    String? url =
        await _rootRef.child(profileImageRef).child("$imageName.jpeg").putData(imageBytes).then((taskSnapshot) async {
      if (taskSnapshot.state == TaskState.success) {
        return await taskSnapshot.ref.getDownloadURL();
      }
      return null;
    });

    return url;
  }
}
