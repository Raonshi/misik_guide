// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_review_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RestaurantReview _$RestaurantReviewFromJson(Map<String, dynamic> json) {
  return _RestaurantReview.fromJson(json);
}

/// @nodoc
mixin _$RestaurantReview {
  String get uid => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  List<String> get imagePaths => throw _privateConstructorUsedError;
  DateTime get createdDate => throw _privateConstructorUsedError;
  DateTime get updatedDate => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantReviewCopyWith<RestaurantReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantReviewCopyWith<$Res> {
  factory $RestaurantReviewCopyWith(
          RestaurantReview value, $Res Function(RestaurantReview) then) =
      _$RestaurantReviewCopyWithImpl<$Res, RestaurantReview>;
  @useResult
  $Res call(
      {String uid,
      String author,
      List<String> imagePaths,
      DateTime createdDate,
      DateTime updatedDate,
      double rating});
}

/// @nodoc
class _$RestaurantReviewCopyWithImpl<$Res, $Val extends RestaurantReview>
    implements $RestaurantReviewCopyWith<$Res> {
  _$RestaurantReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? author = null,
    Object? imagePaths = null,
    Object? createdDate = null,
    Object? updatedDate = null,
    Object? rating = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      imagePaths: null == imagePaths
          ? _value.imagePaths
          : imagePaths // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedDate: null == updatedDate
          ? _value.updatedDate
          : updatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RestaurantReviewCopyWith<$Res>
    implements $RestaurantReviewCopyWith<$Res> {
  factory _$$_RestaurantReviewCopyWith(
          _$_RestaurantReview value, $Res Function(_$_RestaurantReview) then) =
      __$$_RestaurantReviewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String author,
      List<String> imagePaths,
      DateTime createdDate,
      DateTime updatedDate,
      double rating});
}

/// @nodoc
class __$$_RestaurantReviewCopyWithImpl<$Res>
    extends _$RestaurantReviewCopyWithImpl<$Res, _$_RestaurantReview>
    implements _$$_RestaurantReviewCopyWith<$Res> {
  __$$_RestaurantReviewCopyWithImpl(
      _$_RestaurantReview _value, $Res Function(_$_RestaurantReview) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? author = null,
    Object? imagePaths = null,
    Object? createdDate = null,
    Object? updatedDate = null,
    Object? rating = null,
  }) {
    return _then(_$_RestaurantReview(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      imagePaths: null == imagePaths
          ? _value._imagePaths
          : imagePaths // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedDate: null == updatedDate
          ? _value.updatedDate
          : updatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RestaurantReview extends _RestaurantReview
    with DiagnosticableTreeMixin {
  const _$_RestaurantReview(
      {this.uid = "",
      this.author = "",
      final List<String> imagePaths = const [],
      required this.createdDate,
      required this.updatedDate,
      required this.rating})
      : _imagePaths = imagePaths,
        super._();

  factory _$_RestaurantReview.fromJson(Map<String, dynamic> json) =>
      _$$_RestaurantReviewFromJson(json);

  @override
  @JsonKey()
  final String uid;
  @override
  @JsonKey()
  final String author;
  final List<String> _imagePaths;
  @override
  @JsonKey()
  List<String> get imagePaths {
    if (_imagePaths is EqualUnmodifiableListView) return _imagePaths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imagePaths);
  }

  @override
  final DateTime createdDate;
  @override
  final DateTime updatedDate;
  @override
  final double rating;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RestaurantReview(uid: $uid, author: $author, imagePaths: $imagePaths, createdDate: $createdDate, updatedDate: $updatedDate, rating: $rating)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RestaurantReview'))
      ..add(DiagnosticsProperty('uid', uid))
      ..add(DiagnosticsProperty('author', author))
      ..add(DiagnosticsProperty('imagePaths', imagePaths))
      ..add(DiagnosticsProperty('createdDate', createdDate))
      ..add(DiagnosticsProperty('updatedDate', updatedDate))
      ..add(DiagnosticsProperty('rating', rating));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RestaurantReview &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.author, author) || other.author == author) &&
            const DeepCollectionEquality()
                .equals(other._imagePaths, _imagePaths) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.updatedDate, updatedDate) ||
                other.updatedDate == updatedDate) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      author,
      const DeepCollectionEquality().hash(_imagePaths),
      createdDate,
      updatedDate,
      rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RestaurantReviewCopyWith<_$_RestaurantReview> get copyWith =>
      __$$_RestaurantReviewCopyWithImpl<_$_RestaurantReview>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestaurantReviewToJson(
      this,
    );
  }
}

abstract class _RestaurantReview extends RestaurantReview {
  const factory _RestaurantReview(
      {final String uid,
      final String author,
      final List<String> imagePaths,
      required final DateTime createdDate,
      required final DateTime updatedDate,
      required final double rating}) = _$_RestaurantReview;
  const _RestaurantReview._() : super._();

  factory _RestaurantReview.fromJson(Map<String, dynamic> json) =
      _$_RestaurantReview.fromJson;

  @override
  String get uid;
  @override
  String get author;
  @override
  List<String> get imagePaths;
  @override
  DateTime get createdDate;
  @override
  DateTime get updatedDate;
  @override
  double get rating;
  @override
  @JsonKey(ignore: true)
  _$$_RestaurantReviewCopyWith<_$_RestaurantReview> get copyWith =>
      throw _privateConstructorUsedError;
}
