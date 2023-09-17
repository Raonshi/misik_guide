// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  bool get isSignedIn => throw _privateConstructorUsedError;
  bool get checkSaveEmail => throw _privateConstructorUsedError;
  bool get checkAutoSignIn => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({bool isSignedIn, bool checkSaveEmail, bool checkAutoSignIn});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSignedIn = null,
    Object? checkSaveEmail = null,
    Object? checkAutoSignIn = null,
  }) {
    return _then(_value.copyWith(
      isSignedIn: null == isSignedIn
          ? _value.isSignedIn
          : isSignedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      checkSaveEmail: null == checkSaveEmail
          ? _value.checkSaveEmail
          : checkSaveEmail // ignore: cast_nullable_to_non_nullable
              as bool,
      checkAutoSignIn: null == checkAutoSignIn
          ? _value.checkAutoSignIn
          : checkAutoSignIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSignedIn, bool checkSaveEmail, bool checkAutoSignIn});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSignedIn = null,
    Object? checkSaveEmail = null,
    Object? checkAutoSignIn = null,
  }) {
    return _then(_$_AuthState(
      isSignedIn: null == isSignedIn
          ? _value.isSignedIn
          : isSignedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      checkSaveEmail: null == checkSaveEmail
          ? _value.checkSaveEmail
          : checkSaveEmail // ignore: cast_nullable_to_non_nullable
              as bool,
      checkAutoSignIn: null == checkAutoSignIn
          ? _value.checkAutoSignIn
          : checkAutoSignIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AuthState extends _AuthState with DiagnosticableTreeMixin {
  const _$_AuthState(
      {this.isSignedIn = false,
      this.checkSaveEmail = false,
      this.checkAutoSignIn = false})
      : super._();

  @override
  @JsonKey()
  final bool isSignedIn;
  @override
  @JsonKey()
  final bool checkSaveEmail;
  @override
  @JsonKey()
  final bool checkAutoSignIn;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState(isSignedIn: $isSignedIn, checkSaveEmail: $checkSaveEmail, checkAutoSignIn: $checkAutoSignIn)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState'))
      ..add(DiagnosticsProperty('isSignedIn', isSignedIn))
      ..add(DiagnosticsProperty('checkSaveEmail', checkSaveEmail))
      ..add(DiagnosticsProperty('checkAutoSignIn', checkAutoSignIn));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.isSignedIn, isSignedIn) ||
                other.isSignedIn == isSignedIn) &&
            (identical(other.checkSaveEmail, checkSaveEmail) ||
                other.checkSaveEmail == checkSaveEmail) &&
            (identical(other.checkAutoSignIn, checkAutoSignIn) ||
                other.checkAutoSignIn == checkAutoSignIn));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isSignedIn, checkSaveEmail, checkAutoSignIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState extends AuthState {
  const factory _AuthState(
      {final bool isSignedIn,
      final bool checkSaveEmail,
      final bool checkAutoSignIn}) = _$_AuthState;
  const _AuthState._() : super._();

  @override
  bool get isSignedIn;
  @override
  bool get checkSaveEmail;
  @override
  bool get checkAutoSignIn;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
