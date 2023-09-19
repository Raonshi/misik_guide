// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Restaurant _$$_RestaurantFromJson(Map<String, dynamic> json) =>
    _$_Restaurant(
      uid: json['uid'] as String? ?? "",
      name: json['name'] as String? ?? "",
      address: json['address'] as String? ?? "",
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      updateDate: json['updateDate'] == null
          ? null
          : DateTime.parse(json['updateDate'] as String),
      imagePaths: (json['imagePaths'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      reviews: (json['reviews'] as List<dynamic>?)
              ?.map((e) => RestaurantReview.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      menus: (json['menus'] as List<dynamic>?)
              ?.map((e) => RestaurantMenu.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_RestaurantToJson(_$_Restaurant instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'createdDate': instance.createdDate?.toIso8601String(),
      'updateDate': instance.updateDate?.toIso8601String(),
      'imagePaths': instance.imagePaths,
      'reviews': instance.reviews,
      'menus': instance.menus,
    };
