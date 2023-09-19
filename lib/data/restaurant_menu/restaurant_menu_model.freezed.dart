// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_menu_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RestaurantMenu _$RestaurantMenuFromJson(Map<String, dynamic> json) {
  return _RestaurantMenu.fromJson(json);
}

/// @nodoc
mixin _$RestaurantMenu {
  String get uid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantMenuCopyWith<RestaurantMenu> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantMenuCopyWith<$Res> {
  factory $RestaurantMenuCopyWith(
          RestaurantMenu value, $Res Function(RestaurantMenu) then) =
      _$RestaurantMenuCopyWithImpl<$Res, RestaurantMenu>;
  @useResult
  $Res call({String uid, String name, int? price, String? imagePath});
}

/// @nodoc
class _$RestaurantMenuCopyWithImpl<$Res, $Val extends RestaurantMenu>
    implements $RestaurantMenuCopyWith<$Res> {
  _$RestaurantMenuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? price = freezed,
    Object? imagePath = freezed,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RestaurantMenuCopyWith<$Res>
    implements $RestaurantMenuCopyWith<$Res> {
  factory _$$_RestaurantMenuCopyWith(
          _$_RestaurantMenu value, $Res Function(_$_RestaurantMenu) then) =
      __$$_RestaurantMenuCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, String name, int? price, String? imagePath});
}

/// @nodoc
class __$$_RestaurantMenuCopyWithImpl<$Res>
    extends _$RestaurantMenuCopyWithImpl<$Res, _$_RestaurantMenu>
    implements _$$_RestaurantMenuCopyWith<$Res> {
  __$$_RestaurantMenuCopyWithImpl(
      _$_RestaurantMenu _value, $Res Function(_$_RestaurantMenu) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? price = freezed,
    Object? imagePath = freezed,
  }) {
    return _then(_$_RestaurantMenu(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RestaurantMenu
    with DiagnosticableTreeMixin
    implements _RestaurantMenu {
  const _$_RestaurantMenu(
      {this.uid = "", this.name = "", this.price, this.imagePath});

  factory _$_RestaurantMenu.fromJson(Map<String, dynamic> json) =>
      _$$_RestaurantMenuFromJson(json);

  @override
  @JsonKey()
  final String uid;
  @override
  @JsonKey()
  final String name;
  @override
  final int? price;
  @override
  final String? imagePath;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RestaurantMenu(uid: $uid, name: $name, price: $price, imagePath: $imagePath)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RestaurantMenu'))
      ..add(DiagnosticsProperty('uid', uid))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('imagePath', imagePath));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RestaurantMenu &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, name, price, imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RestaurantMenuCopyWith<_$_RestaurantMenu> get copyWith =>
      __$$_RestaurantMenuCopyWithImpl<_$_RestaurantMenu>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestaurantMenuToJson(
      this,
    );
  }
}

abstract class _RestaurantMenu implements RestaurantMenu {
  const factory _RestaurantMenu(
      {final String uid,
      final String name,
      final int? price,
      final String? imagePath}) = _$_RestaurantMenu;

  factory _RestaurantMenu.fromJson(Map<String, dynamic> json) =
      _$_RestaurantMenu.fromJson;

  @override
  String get uid;
  @override
  String get name;
  @override
  int? get price;
  @override
  String? get imagePath;
  @override
  @JsonKey(ignore: true)
  _$$_RestaurantMenuCopyWith<_$_RestaurantMenu> get copyWith =>
      throw _privateConstructorUsedError;
}
