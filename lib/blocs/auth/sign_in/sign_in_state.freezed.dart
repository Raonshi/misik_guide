// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get isSignedIn => throw _privateConstructorUsedError;
  bool get checkSaveEmail => throw _privateConstructorUsedError;
  bool get checkAutoSignIn => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
  @useResult
  $Res call(
      {String email,
      String password,
      bool isSignedIn,
      bool checkSaveEmail,
      bool checkAutoSignIn});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? isSignedIn = null,
    Object? checkSaveEmail = null,
    Object? checkAutoSignIn = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_SignInStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$_SignInStateCopyWith(
          _$_SignInState value, $Res Function(_$_SignInState) then) =
      __$$_SignInStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      bool isSignedIn,
      bool checkSaveEmail,
      bool checkAutoSignIn});
}

/// @nodoc
class __$$_SignInStateCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$_SignInState>
    implements _$$_SignInStateCopyWith<$Res> {
  __$$_SignInStateCopyWithImpl(
      _$_SignInState _value, $Res Function(_$_SignInState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? isSignedIn = null,
    Object? checkSaveEmail = null,
    Object? checkAutoSignIn = null,
  }) {
    return _then(_$_SignInState(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$_SignInState extends _SignInState with DiagnosticableTreeMixin {
  const _$_SignInState(
      {this.email = "",
      this.password = "",
      this.isSignedIn = false,
      this.checkSaveEmail = false,
      this.checkAutoSignIn = false})
      : super._();

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
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
    return 'SignInState(email: $email, password: $password, isSignedIn: $isSignedIn, checkSaveEmail: $checkSaveEmail, checkAutoSignIn: $checkAutoSignIn)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInState'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('isSignedIn', isSignedIn))
      ..add(DiagnosticsProperty('checkSaveEmail', checkSaveEmail))
      ..add(DiagnosticsProperty('checkAutoSignIn', checkAutoSignIn));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isSignedIn, isSignedIn) ||
                other.isSignedIn == isSignedIn) &&
            (identical(other.checkSaveEmail, checkSaveEmail) ||
                other.checkSaveEmail == checkSaveEmail) &&
            (identical(other.checkAutoSignIn, checkAutoSignIn) ||
                other.checkAutoSignIn == checkAutoSignIn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, isSignedIn,
      checkSaveEmail, checkAutoSignIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      __$$_SignInStateCopyWithImpl<_$_SignInState>(this, _$identity);
}

abstract class _SignInState extends SignInState {
  const factory _SignInState(
      {final String email,
      final String password,
      final bool isSignedIn,
      final bool checkSaveEmail,
      final bool checkAutoSignIn}) = _$_SignInState;
  const _SignInState._() : super._();

  @override
  String get email;
  @override
  String get password;
  @override
  bool get isSignedIn;
  @override
  bool get checkSaveEmail;
  @override
  bool get checkAutoSignIn;
  @override
  @JsonKey(ignore: true)
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}
