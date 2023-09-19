import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'restaurant_menu_model.freezed.dart';
part 'restaurant_menu_model.g.dart';

@freezed
class RestaurantMenu with _$RestaurantMenu {
  const factory RestaurantMenu({
    @Default("") String uid,
    @Default("") String name,
    int? price,
    String? imagePath,
  }) = _RestaurantMenu;

  factory RestaurantMenu.fromJson(Map<String, Object?> json)
      => _$RestaurantMenuFromJson(json);
}