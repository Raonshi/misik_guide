// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_menu_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RestaurantMenu _$$_RestaurantMenuFromJson(Map<String, dynamic> json) =>
    _$_RestaurantMenu(
      uid: json['uid'] as String? ?? "",
      name: json['name'] as String? ?? "",
      price: json['price'] as int?,
      imagePath: json['imagePath'] as String?,
    );

Map<String, dynamic> _$$_RestaurantMenuToJson(_$_RestaurantMenu instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'price': instance.price,
      'imagePath': instance.imagePath,
    };
