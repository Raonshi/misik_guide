// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RestaurantReview _$$_RestaurantReviewFromJson(Map<String, dynamic> json) =>
    _$_RestaurantReview(
      uid: json['uid'] as String? ?? "",
      author: json['author'] as String? ?? "",
      imagePaths: (json['imagePaths'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      createdDate: DateTime.parse(json['createdDate'] as String),
      updatedDate: DateTime.parse(json['updatedDate'] as String),
      rating: (json['rating'] as num).toDouble(),
    );

Map<String, dynamic> _$$_RestaurantReviewToJson(_$_RestaurantReview instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'author': instance.author,
      'imagePaths': instance.imagePaths,
      'createdDate': instance.createdDate.toIso8601String(),
      'updatedDate': instance.updatedDate.toIso8601String(),
      'rating': instance.rating,
    };
