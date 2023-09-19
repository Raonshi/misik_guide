import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:misik_guide/data/restaurant_menu/restaurant_menu_model.dart';
import 'package:misik_guide/data/restaurant_review/restaurant_review_model.dart';

part 'restaurant_model.freezed.dart';
part 'restaurant_model.g.dart';

@freezed
class Restaurant with _$Restaurant {
  const factory Restaurant({
    required String uid,
    required String name,
    String? address,
    double? latitude,
    double? longitude,
    DateTime? createdDate,
    DateTime? updateDate,
    @Default([]) List<String> imagePaths,
    @Default([]) List<RestaurantReview> reviews,
    @Default([]) List<RestaurantMenu> menus,
  }) = _Restaurant;

  factory Restaurant.fromJson(Map<String, Object?> json) => _$RestaurantFromJson(json);

  Restaurant._();

  double get avgRate => reviews.map((e) => e.rating).reduce((a, b) => a + b) / reviews.length;

  int? get avgPrice {
    int? totalPrice = menus.map((e) => e.price).reduce((a, b) {
      if (a == null) return b;
      if (b == null) return a;
      return a + b;
    });

    if (totalPrice == null) return null;
    return totalPrice ~/ menus.length;
  }
}
