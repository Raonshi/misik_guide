import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:misik_guide/data/restaurant/restaurant_model.dart';
import 'package:misik_guide/secrets/firebase_config.dart';

class RestaurantRepository {
  final CollectionReference<Map<String, dynamic>> _restaurantCollection =
      FirebaseFirestore.instance.collection(restaurantColRef);

  Future<void> postRestaurant({
    required String name,
    String? address,
    double? latitude,
    double? longitude,
    List<String> imagePaths = const [],
  }) async {
    try {
      DocumentReference ref = _restaurantCollection.doc();
      Restaurant restaurant = Restaurant(
        uid: ref.id,
        name: name,
        address: address,
        latitude: latitude,
        longitude: longitude,
        imagePaths: imagePaths,
      );

      await ref.set(restaurant.toJson());
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<Restaurant?> getRestaurant(String uid) async {
    return await _restaurantCollection.doc(uid).get().then((value) {
      if (value.data() == null) return null;
      return Restaurant.fromJson(value.data()!);
    });
  }

  Future<List<Restaurant>> getAllRestaurants() async {
    return await _restaurantCollection.get().then((value) {
      if (value.docs.isEmpty) return [];
      return value.docs.map((e) => Restaurant.fromJson(e.data())).toList();
    });
  }
}
