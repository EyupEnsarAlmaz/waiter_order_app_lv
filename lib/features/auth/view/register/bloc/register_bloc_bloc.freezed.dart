// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterBlocEvent {
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? password)
        registerSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? password)? registerSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? password)? registerSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterSubmitted value) registerSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterSubmitted value)? registerSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterSubmitted value)? registerSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterBlocEventCopyWith<RegisterBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterBlocEventCopyWith<$Res> {
  factory $RegisterBlocEventCopyWith(
          RegisterBlocEvent value, $Res Function(RegisterBlocEvent) then) =
      _$RegisterBlocEventCopyWithImpl<$Res, RegisterBlocEvent>;
  @useResult
  $Res call({String? email, String? password});
}

/// @nodoc
class _$RegisterBlocEventCopyWithImpl<$Res, $Val extends RegisterBlocEvent>
    implements $RegisterBlocEventCopyWith<$Res> {
  _$RegisterBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterSubmittedImplCopyWith<$Res>
    implements $RegisterBlocEventCopyWith<$Res> {
  factory _$$RegisterSubmittedImplCopyWith(_$RegisterSubmittedImpl value,
          $Res Function(_$RegisterSubmittedImpl) then) =
      __$$RegisterSubmittedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email, String? password});
}

/// @nodoc
class __$$RegisterSubmittedImplCopyWithImpl<$Res>
    extends _$RegisterBlocEventCopyWithImpl<$Res, _$RegisterSubmittedImpl>
    implements _$$RegisterSubmittedImplCopyWith<$Res> {
  __$$RegisterSubmittedImplCopyWithImpl(_$RegisterSubmittedImpl _value,
      $Res Function(_$RegisterSubmittedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$RegisterSubmittedImpl(
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

class _$RegisterSubmittedImpl implements _RegisterSubmitted {
  const _$RegisterSubmittedImpl(this.email, this.password);

  @override
  final String? email;
  @override
  final String? password;

  @override
  String toString() {
    return 'RegisterBlocEvent.registerSubmitted(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterSubmittedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterSubmittedImplCopyWith<_$RegisterSubmittedImpl> get copyWith =>
      __$$RegisterSubmittedImplCopyWithImpl<_$RegisterSubmittedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? password)
        registerSubmitted,
  }) {
    return registerSubmitted(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? password)? registerSubmitted,
  }) {
    return registerSubmitted?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? password)? registerSubmitted,
    required TResult orElse(),
  }) {
    if (registerSubmitted != null) {
      return registerSubmitted(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterSubmitted value) registerSubmitted,
  }) {
    return registerSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterSubmitted value)? registerSubmitted,
  }) {
    return registerSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterSubmitted value)? registerSubmitted,
    required TResult orElse(),
  }) {
    if (registerSubmitted != null) {
      return registerSubmitted(this);
    }
    return orElse();
  }
}

abstract class _RegisterSubmitted implements RegisterBlocEvent {
  const factory _RegisterSubmitted(
      final String? email, final String? password) = _$RegisterSubmittedImpl;

  @override
  String? get email;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$RegisterSubmittedImplCopyWith<_$RegisterSubmittedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterBlocState {
  RegisterStatus get status => throw _privateConstructorUsedError;
  RegisterModel? get registerModel => throw _privateConstructorUsedError;
  Object? get errorMesage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterBlocStateCopyWith<RegisterBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterBlocStateCopyWith<$Res> {
  factory $RegisterBlocStateCopyWith(
          RegisterBlocState value, $Res Function(RegisterBlocState) then) =
      _$RegisterBlocStateCopyWithImpl<$Res, RegisterBlocState>;
  @useResult
  $Res call(
      {RegisterStatus status,
      RegisterModel? registerModel,
      Object? errorMesage});
}

/// @nodoc
class _$RegisterBlocStateCopyWithImpl<$Res, $Val extends RegisterBlocState>
    implements $RegisterBlocStateCopyWith<$Res> {
  _$RegisterBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? registerModel = freezed,
    Object? errorMesage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RegisterStatus,
      registerModel: freezed == registerModel
          ? _value.registerModel
          : registerModel // ignore: cast_nullable_to_non_nullable
              as RegisterModel?,
      errorMesage: freezed == errorMesage ? _value.errorMesage : errorMesage,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterBlocStateImplCopyWith<$Res>
    implements $RegisterBlocStateCopyWith<$Res> {
  factory _$$RegisterBlocStateImplCopyWith(_$RegisterBlocStateImpl value,
          $Res Function(_$RegisterBlocStateImpl) then) =
      __$$RegisterBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RegisterStatus status,
      RegisterModel? registerModel,
      Object? errorMesage});
}

/// @nodoc
class __$$RegisterBlocStateImplCopyWithImpl<$Res>
    extends _$RegisterBlocStateCopyWithImpl<$Res, _$RegisterBlocStateImpl>
    implements _$$RegisterBlocStateImplCopyWith<$Res> {
  __$$RegisterBlocStateImplCopyWithImpl(_$RegisterBlocStateImpl _value,
      $Res Function(_$RegisterBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? registerModel = freezed,
    Object? errorMesage = freezed,
  }) {
    return _then(_$RegisterBlocStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RegisterStatus,
      registerModel: freezed == registerModel
          ? _value.registerModel
          : registerModel // ignore: cast_nullable_to_non_nullable
              as RegisterModel?,
      errorMesage: freezed == errorMesage ? _value.errorMesage : errorMesage,
    ));
  }
}

/// @nodoc

class _$RegisterBlocStateImpl implements _RegisterBlocState {
  const _$RegisterBlocStateImpl(
      {this.status = RegisterStatus.initial,
      this.registerModel,
      this.errorMesage});

  @override
  @JsonKey()
  final RegisterStatus status;
  @override
  final RegisterModel? registerModel;
  @override
  final Object? errorMesage;

  @override
  String toString() {
    return 'RegisterBlocState(status: $status, registerModel: $registerModel, errorMesage: $errorMesage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterBlocStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.registerModel, registerModel) ||
                other.registerModel == registerModel) &&
            const DeepCollectionEquality()
                .equals(other.errorMesage, errorMesage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, registerModel,
      const DeepCollectionEquality().hash(errorMesage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterBlocStateImplCopyWith<_$RegisterBlocStateImpl> get copyWith =>
      __$$RegisterBlocStateImplCopyWithImpl<_$RegisterBlocStateImpl>(
          this, _$identity);
}

abstract class _RegisterBlocState implements RegisterBlocState {
  const factory _RegisterBlocState(
      {final RegisterStatus status,
      final RegisterModel? registerModel,
      final Object? errorMesage}) = _$RegisterBlocStateImpl;

  @override
  RegisterStatus get status;
  @override
  RegisterModel? get registerModel;
  @override
  Object? get errorMesage;
  @override
  @JsonKey(ignore: true)
  _$$RegisterBlocStateImplCopyWith<_$RegisterBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
