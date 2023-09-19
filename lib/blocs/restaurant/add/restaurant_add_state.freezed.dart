// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_add_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RestaurantAddState {
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  List<String> get imagePaths => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RestaurantAddStateCopyWith<RestaurantAddState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantAddStateCopyWith<$Res> {
  factory $RestaurantAddStateCopyWith(
          RestaurantAddState value, $Res Function(RestaurantAddState) then) =
      _$RestaurantAddStateCopyWithImpl<$Res, RestaurantAddState>;
  @useResult
  $Res call(
      {String name,
      String address,
      double? latitude,
      double? longitude,
      List<String> imagePaths});
}

/// @nodoc
class _$RestaurantAddStateCopyWithImpl<$Res, $Val extends RestaurantAddState>
    implements $RestaurantAddStateCopyWith<$Res> {
  _$RestaurantAddStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? address = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? imagePaths = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      imagePaths: null == imagePaths
          ? _value.imagePaths
          : imagePaths // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RestaurantAddStateCopyWith<$Res>
    implements $RestaurantAddStateCopyWith<$Res> {
  factory _$$_RestaurantAddStateCopyWith(_$_RestaurantAddState value,
          $Res Function(_$_RestaurantAddState) then) =
      __$$_RestaurantAddStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String address,
      double? latitude,
      double? longitude,
      List<String> imagePaths});
}

/// @nodoc
class __$$_RestaurantAddStateCopyWithImpl<$Res>
    extends _$RestaurantAddStateCopyWithImpl<$Res, _$_RestaurantAddState>
    implements _$$_RestaurantAddStateCopyWith<$Res> {
  __$$_RestaurantAddStateCopyWithImpl(
      _$_RestaurantAddState _value, $Res Function(_$_RestaurantAddState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? address = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? imagePaths = null,
  }) {
    return _then(_$_RestaurantAddState(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      imagePaths: null == imagePaths
          ? _value._imagePaths
          : imagePaths // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_RestaurantAddState extends _RestaurantAddState
    with DiagnosticableTreeMixin {
  const _$_RestaurantAddState(
      {this.name = "",
      this.address = "",
      this.latitude,
      this.longitude,
      final List<String> imagePaths = const []})
      : _imagePaths = imagePaths,
        super._();

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String address;
  @override
  final double? latitude;
  @override
  final double? longitude;
  final List<String> _imagePaths;
  @override
  @JsonKey()
  List<String> get imagePaths {
    if (_imagePaths is EqualUnmodifiableListView) return _imagePaths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imagePaths);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RestaurantAddState(name: $name, address: $address, latitude: $latitude, longitude: $longitude, imagePaths: $imagePaths)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RestaurantAddState'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('latitude', latitude))
      ..add(DiagnosticsProperty('longitude', longitude))
      ..add(DiagnosticsProperty('imagePaths', imagePaths));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RestaurantAddState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            const DeepCollectionEquality()
                .equals(other._imagePaths, _imagePaths));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, address, latitude,
      longitude, const DeepCollectionEquality().hash(_imagePaths));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RestaurantAddStateCopyWith<_$_RestaurantAddState> get copyWith =>
      __$$_RestaurantAddStateCopyWithImpl<_$_RestaurantAddState>(
          this, _$identity);
}

abstract class _RestaurantAddState extends RestaurantAddState {
  const factory _RestaurantAddState(
      {final String name,
      final String address,
      final double? latitude,
      final double? longitude,
      final List<String> imagePaths}) = _$_RestaurantAddState;
  const _RestaurantAddState._() : super._();

  @override
  String get name;
  @override
  String get address;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  List<String> get imagePaths;
  @override
  @JsonKey(ignore: true)
  _$$_RestaurantAddStateCopyWith<_$_RestaurantAddState> get copyWith =>
      throw _privateConstructorUsedError;
}
