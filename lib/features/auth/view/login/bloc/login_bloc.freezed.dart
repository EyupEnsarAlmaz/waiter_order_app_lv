// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? password) loginSubmitted,
    required TResult Function() autenticationLoggedIn,
    required TResult Function() autenticationLoggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? password)? loginSubmitted,
    TResult? Function()? autenticationLoggedIn,
    TResult? Function()? autenticationLoggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? password)? loginSubmitted,
    TResult Function()? autenticationLoggedIn,
    TResult Function()? autenticationLoggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginSubmitted value) loginSubmitted,
    required TResult Function(_AuthLoggedIn value) autenticationLoggedIn,
    required TResult Function(_AuthLoggedOut value) autenticationLoggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginSubmitted value)? loginSubmitted,
    TResult? Function(_AuthLoggedIn value)? autenticationLoggedIn,
    TResult? Function(_AuthLoggedOut value)? autenticationLoggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginSubmitted value)? loginSubmitted,
    TResult Function(_AuthLoggedIn value)? autenticationLoggedIn,
    TResult Function(_AuthLoggedOut value)? autenticationLoggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginBlocEventCopyWith<$Res> {
  factory $LoginBlocEventCopyWith(
          LoginBlocEvent value, $Res Function(LoginBlocEvent) then) =
      _$LoginBlocEventCopyWithImpl<$Res, LoginBlocEvent>;
}

/// @nodoc
class _$LoginBlocEventCopyWithImpl<$Res, $Val extends LoginBlocEvent>
    implements $LoginBlocEventCopyWith<$Res> {
  _$LoginBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginSubmittedImplCopyWith<$Res> {
  factory _$$LoginSubmittedImplCopyWith(_$LoginSubmittedImpl value,
          $Res Function(_$LoginSubmittedImpl) then) =
      __$$LoginSubmittedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? email, String? password});
}

/// @nodoc
class __$$LoginSubmittedImplCopyWithImpl<$Res>
    extends _$LoginBlocEventCopyWithImpl<$Res, _$LoginSubmittedImpl>
    implements _$$LoginSubmittedImplCopyWith<$Res> {
  __$$LoginSubmittedImplCopyWithImpl(
      _$LoginSubmittedImpl _value, $Res Function(_$LoginSubmittedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$LoginSubmittedImpl(
      freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoginSubmittedImpl implements _LoginSubmitted {
  const _$LoginSubmittedImpl(this.email, this.password);

  @override
  final String? email;
  @override
  final String? password;

  @override
  String toString() {
    return 'LoginBlocEvent.loginSubmitted(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSubmittedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSubmittedImplCopyWith<_$LoginSubmittedImpl> get copyWith =>
      __$$LoginSubmittedImplCopyWithImpl<_$LoginSubmittedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? password) loginSubmitted,
    required TResult Function() autenticationLoggedIn,
    required TResult Function() autenticationLoggedOut,
  }) {
    return loginSubmitted(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? password)? loginSubmitted,
    TResult? Function()? autenticationLoggedIn,
    TResult? Function()? autenticationLoggedOut,
  }) {
    return loginSubmitted?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? password)? loginSubmitted,
    TResult Function()? autenticationLoggedIn,
    TResult Function()? autenticationLoggedOut,
    required TResult orElse(),
  }) {
    if (loginSubmitted != null) {
      return loginSubmitted(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginSubmitted value) loginSubmitted,
    required TResult Function(_AuthLoggedIn value) autenticationLoggedIn,
    required TResult Function(_AuthLoggedOut value) autenticationLoggedOut,
  }) {
    return loginSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginSubmitted value)? loginSubmitted,
    TResult? Function(_AuthLoggedIn value)? autenticationLoggedIn,
    TResult? Function(_AuthLoggedOut value)? autenticationLoggedOut,
  }) {
    return loginSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginSubmitted value)? loginSubmitted,
    TResult Function(_AuthLoggedIn value)? autenticationLoggedIn,
    TResult Function(_AuthLoggedOut value)? autenticationLoggedOut,
    required TResult orElse(),
  }) {
    if (loginSubmitted != null) {
      return loginSubmitted(this);
    }
    return orElse();
  }
}

abstract class _LoginSubmitted implements LoginBlocEvent {
  const factory _LoginSubmitted(final String? email, final String? password) =
      _$LoginSubmittedImpl;

  String? get email;
  String? get password;
  @JsonKey(ignore: true)
  _$$LoginSubmittedImplCopyWith<_$LoginSubmittedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthLoggedInImplCopyWith<$Res> {
  factory _$$AuthLoggedInImplCopyWith(
          _$AuthLoggedInImpl value, $Res Function(_$AuthLoggedInImpl) then) =
      __$$AuthLoggedInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLoggedInImplCopyWithImpl<$Res>
    extends _$LoginBlocEventCopyWithImpl<$Res, _$AuthLoggedInImpl>
    implements _$$AuthLoggedInImplCopyWith<$Res> {
  __$$AuthLoggedInImplCopyWithImpl(
      _$AuthLoggedInImpl _value, $Res Function(_$AuthLoggedInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthLoggedInImpl implements _AuthLoggedIn {
  const _$AuthLoggedInImpl();

  @override
  String toString() {
    return 'LoginBlocEvent.autenticationLoggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthLoggedInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? password) loginSubmitted,
    required TResult Function() autenticationLoggedIn,
    required TResult Function() autenticationLoggedOut,
  }) {
    return autenticationLoggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? password)? loginSubmitted,
    TResult? Function()? autenticationLoggedIn,
    TResult? Function()? autenticationLoggedOut,
  }) {
    return autenticationLoggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? password)? loginSubmitted,
    TResult Function()? autenticationLoggedIn,
    TResult Function()? autenticationLoggedOut,
    required TResult orElse(),
  }) {
    if (autenticationLoggedIn != null) {
      return autenticationLoggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginSubmitted value) loginSubmitted,
    required TResult Function(_AuthLoggedIn value) autenticationLoggedIn,
    required TResult Function(_AuthLoggedOut value) autenticationLoggedOut,
  }) {
    return autenticationLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginSubmitted value)? loginSubmitted,
    TResult? Function(_AuthLoggedIn value)? autenticationLoggedIn,
    TResult? Function(_AuthLoggedOut value)? autenticationLoggedOut,
  }) {
    return autenticationLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginSubmitted value)? loginSubmitted,
    TResult Function(_AuthLoggedIn value)? autenticationLoggedIn,
    TResult Function(_AuthLoggedOut value)? autenticationLoggedOut,
    required TResult orElse(),
  }) {
    if (autenticationLoggedIn != null) {
      return autenticationLoggedIn(this);
    }
    return orElse();
  }
}

abstract class _AuthLoggedIn implements LoginBlocEvent {
  const factory _AuthLoggedIn() = _$AuthLoggedInImpl;
}

/// @nodoc
abstract class _$$AuthLoggedOutImplCopyWith<$Res> {
  factory _$$AuthLoggedOutImplCopyWith(
          _$AuthLoggedOutImpl value, $Res Function(_$AuthLoggedOutImpl) then) =
      __$$AuthLoggedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLoggedOutImplCopyWithImpl<$Res>
    extends _$LoginBlocEventCopyWithImpl<$Res, _$AuthLoggedOutImpl>
    implements _$$AuthLoggedOutImplCopyWith<$Res> {
  __$$AuthLoggedOutImplCopyWithImpl(
      _$AuthLoggedOutImpl _value, $Res Function(_$AuthLoggedOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthLoggedOutImpl implements _AuthLoggedOut {
  const _$AuthLoggedOutImpl();

  @override
  String toString() {
    return 'LoginBlocEvent.autenticationLoggedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthLoggedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? password) loginSubmitted,
    required TResult Function() autenticationLoggedIn,
    required TResult Function() autenticationLoggedOut,
  }) {
    return autenticationLoggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? password)? loginSubmitted,
    TResult? Function()? autenticationLoggedIn,
    TResult? Function()? autenticationLoggedOut,
  }) {
    return autenticationLoggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? password)? loginSubmitted,
    TResult Function()? autenticationLoggedIn,
    TResult Function()? autenticationLoggedOut,
    required TResult orElse(),
  }) {
    if (autenticationLoggedOut != null) {
      return autenticationLoggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginSubmitted value) loginSubmitted,
    required TResult Function(_AuthLoggedIn value) autenticationLoggedIn,
    required TResult Function(_AuthLoggedOut value) autenticationLoggedOut,
  }) {
    return autenticationLoggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginSubmitted value)? loginSubmitted,
    TResult? Function(_AuthLoggedIn value)? autenticationLoggedIn,
    TResult? Function(_AuthLoggedOut value)? autenticationLoggedOut,
  }) {
    return autenticationLoggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginSubmitted value)? loginSubmitted,
    TResult Function(_AuthLoggedIn value)? autenticationLoggedIn,
    TResult Function(_AuthLoggedOut value)? autenticationLoggedOut,
    required TResult orElse(),
  }) {
    if (autenticationLoggedOut != null) {
      return autenticationLoggedOut(this);
    }
    return orElse();
  }
}

abstract class _AuthLoggedOut implements LoginBlocEvent {
  const factory _AuthLoggedOut() = _$AuthLoggedOutImpl;
}

/// @nodoc
mixin _$LoginBlocState {
  LoginStatus get status => throw _privateConstructorUsedError;
  LoginModel? get loginModel => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  Object? get errorMesage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginBlocStateCopyWith<LoginBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginBlocStateCopyWith<$Res> {
  factory $LoginBlocStateCopyWith(
          LoginBlocState value, $Res Function(LoginBlocState) then) =
      _$LoginBlocStateCopyWithImpl<$Res, LoginBlocState>;
  @useResult
  $Res call(
      {LoginStatus status,
      LoginModel? loginModel,
      User? user,
      Object? errorMesage});
}

/// @nodoc
class _$LoginBlocStateCopyWithImpl<$Res, $Val extends LoginBlocState>
    implements $LoginBlocStateCopyWith<$Res> {
  _$LoginBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? loginModel = freezed,
    Object? user = freezed,
    Object? errorMesage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoginStatus,
      loginModel: freezed == loginModel
          ? _value.loginModel
          : loginModel // ignore: cast_nullable_to_non_nullable
              as LoginModel?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      errorMesage: freezed == errorMesage ? _value.errorMesage : errorMesage,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterBlocStateImplCopyWith<$Res>
    implements $LoginBlocStateCopyWith<$Res> {
  factory _$$RegisterBlocStateImplCopyWith(_$RegisterBlocStateImpl value,
          $Res Function(_$RegisterBlocStateImpl) then) =
      __$$RegisterBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoginStatus status,
      LoginModel? loginModel,
      User? user,
      Object? errorMesage});
}

/// @nodoc
class __$$RegisterBlocStateImplCopyWithImpl<$Res>
    extends _$LoginBlocStateCopyWithImpl<$Res, _$RegisterBlocStateImpl>
    implements _$$RegisterBlocStateImplCopyWith<$Res> {
  __$$RegisterBlocStateImplCopyWithImpl(_$RegisterBlocStateImpl _value,
      $Res Function(_$RegisterBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? loginModel = freezed,
    Object? user = freezed,
    Object? errorMesage = freezed,
  }) {
    return _then(_$RegisterBlocStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoginStatus,
      loginModel: freezed == loginModel
          ? _value.loginModel
          : loginModel // ignore: cast_nullable_to_non_nullable
              as LoginModel?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      errorMesage: freezed == errorMesage ? _value.errorMesage : errorMesage,
    ));
  }
}

/// @nodoc

class _$RegisterBlocStateImpl implements _RegisterBlocState {
  const _$RegisterBlocStateImpl(
      {this.status = LoginStatus.initial,
      this.loginModel,
      this.user,
      this.errorMesage});

  @override
  @JsonKey()
  final LoginStatus status;
  @override
  final LoginModel? loginModel;
  @override
  final User? user;
  @override
  final Object? errorMesage;

  @override
  String toString() {
    return 'LoginBlocState(status: $status, loginModel: $loginModel, user: $user, errorMesage: $errorMesage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterBlocStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.loginModel, loginModel) ||
                other.loginModel == loginModel) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other.errorMesage, errorMesage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, loginModel, user,
      const DeepCollectionEquality().hash(errorMesage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterBlocStateImplCopyWith<_$RegisterBlocStateImpl> get copyWith =>
      __$$RegisterBlocStateImplCopyWithImpl<_$RegisterBlocStateImpl>(
          this, _$identity);
}

abstract class _RegisterBlocState implements LoginBlocState {
  const factory _RegisterBlocState(
      {final LoginStatus status,
      final LoginModel? loginModel,
      final User? user,
      final Object? errorMesage}) = _$RegisterBlocStateImpl;

  @override
  LoginStatus get status;
  @override
  LoginModel? get loginModel;
  @override
  User? get user;
  @override
  Object? get errorMesage;
  @override
  @JsonKey(ignore: true)
  _$$RegisterBlocStateImplCopyWith<_$RegisterBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
