import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'restaurant_review_model.freezed.dart';
part 'restaurant_review_model.g.dart';

@freezed
class RestaurantReview with _$RestaurantReview {
  const factory RestaurantReview({
    @Default("") String uid,
    @Default("") String author,
    @Default([]) List<String> imagePaths,
    required DateTime createdDate,
    required DateTime updatedDate,
    required double rating,
  }) = _RestaurantReview;

  factory RestaurantReview.fromJson(Map<String, Object?> json) => _$RestaurantReviewFromJson(json);

  const RestaurantReview._();

  
}
