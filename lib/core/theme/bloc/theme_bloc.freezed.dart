// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ThemeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isDark, ThemeData? themeData)
        themeChangedEvent,
    required TResult Function() initialTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isDark, ThemeData? themeData)? themeChangedEvent,
    TResult? Function()? initialTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isDark, ThemeData? themeData)? themeChangedEvent,
    TResult Function()? initialTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ThemeChanged value) themeChangedEvent,
    required TResult Function(_InitialTheme value) initialTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ThemeChanged value)? themeChangedEvent,
    TResult? Function(_InitialTheme value)? initialTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThemeChanged value)? themeChangedEvent,
    TResult Function(_InitialTheme value)? initialTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res, ThemeEvent>;
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res, $Val extends ThemeEvent>
    implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ThemeChangedImplCopyWith<$Res> {
  factory _$$ThemeChangedImplCopyWith(
          _$ThemeChangedImpl value, $Res Function(_$ThemeChangedImpl) then) =
      __$$ThemeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool? isDark, ThemeData? themeData});
}

/// @nodoc
class __$$ThemeChangedImplCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$ThemeChangedImpl>
    implements _$$ThemeChangedImplCopyWith<$Res> {
  __$$ThemeChangedImplCopyWithImpl(
      _$ThemeChangedImpl _value, $Res Function(_$ThemeChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDark = freezed,
    Object? themeData = freezed,
  }) {
    return _then(_$ThemeChangedImpl(
      freezed == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == themeData
          ? _value.themeData
          : themeData // ignore: cast_nullable_to_non_nullable
              as ThemeData?,
    ));
  }
}

/// @nodoc

class _$ThemeChangedImpl implements _ThemeChanged {
  const _$ThemeChangedImpl(this.isDark, this.themeData);

  @override
  final bool? isDark;
  @override
  final ThemeData? themeData;

  @override
  String toString() {
    return 'ThemeEvent.themeChangedEvent(isDark: $isDark, themeData: $themeData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeChangedImpl &&
            (identical(other.isDark, isDark) || other.isDark == isDark) &&
            (identical(other.themeData, themeData) ||
                other.themeData == themeData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDark, themeData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeChangedImplCopyWith<_$ThemeChangedImpl> get copyWith =>
      __$$ThemeChangedImplCopyWithImpl<_$ThemeChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isDark, ThemeData? themeData)
        themeChangedEvent,
    required TResult Function() initialTheme,
  }) {
    return themeChangedEvent(isDark, themeData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isDark, ThemeData? themeData)? themeChangedEvent,
    TResult? Function()? initialTheme,
  }) {
    return themeChangedEvent?.call(isDark, themeData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isDark, ThemeData? themeData)? themeChangedEvent,
    TResult Function()? initialTheme,
    required TResult orElse(),
  }) {
    if (themeChangedEvent != null) {
      return themeChangedEvent(isDark, themeData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ThemeChanged value) themeChangedEvent,
    required TResult Function(_InitialTheme value) initialTheme,
  }) {
    return themeChangedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ThemeChanged value)? themeChangedEvent,
    TResult? Function(_InitialTheme value)? initialTheme,
  }) {
    return themeChangedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThemeChanged value)? themeChangedEvent,
    TResult Function(_InitialTheme value)? initialTheme,
    required TResult orElse(),
  }) {
    if (themeChangedEvent != null) {
      return themeChangedEvent(this);
    }
    return orElse();
  }
}

abstract class _ThemeChanged implements ThemeEvent {
  const factory _ThemeChanged(final bool? isDark, final ThemeData? themeData) =
      _$ThemeChangedImpl;

  bool? get isDark;
  ThemeData? get themeData;
  @JsonKey(ignore: true)
  _$$ThemeChangedImplCopyWith<_$ThemeChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialThemeImplCopyWith<$Res> {
  factory _$$InitialThemeImplCopyWith(
          _$InitialThemeImpl value, $Res Function(_$InitialThemeImpl) then) =
      __$$InitialThemeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialThemeImplCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$InitialThemeImpl>
    implements _$$InitialThemeImplCopyWith<$Res> {
  __$$InitialThemeImplCopyWithImpl(
      _$InitialThemeImpl _value, $Res Function(_$InitialThemeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialThemeImpl implements _InitialTheme {
  const _$InitialThemeImpl();

  @override
  String toString() {
    return 'ThemeEvent.initialTheme()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialThemeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isDark, ThemeData? themeData)
        themeChangedEvent,
    required TResult Function() initialTheme,
  }) {
    return initialTheme();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isDark, ThemeData? themeData)? themeChangedEvent,
    TResult? Function()? initialTheme,
  }) {
    return initialTheme?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isDark, ThemeData? themeData)? themeChangedEvent,
    TResult Function()? initialTheme,
    required TResult orElse(),
  }) {
    if (initialTheme != null) {
      return initialTheme();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ThemeChanged value) themeChangedEvent,
    required TResult Function(_InitialTheme value) initialTheme,
  }) {
    return initialTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ThemeChanged value)? themeChangedEvent,
    TResult? Function(_InitialTheme value)? initialTheme,
  }) {
    return initialTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThemeChanged value)? themeChangedEvent,
    TResult Function(_InitialTheme value)? initialTheme,
    required TResult orElse(),
  }) {
    if (initialTheme != null) {
      return initialTheme(this);
    }
    return orElse();
  }
}

abstract class _InitialTheme implements ThemeEvent {
  const factory _InitialTheme() = _$InitialThemeImpl;
}

/// @nodoc
mixin _$ThemeState {
  ThemeStatus get status => throw _privateConstructorUsedError;
  bool? get isDark => throw _privateConstructorUsedError;
  ThemeData? get themeData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeStateCopyWith<ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res, ThemeState>;
  @useResult
  $Res call({ThemeStatus status, bool? isDark, ThemeData? themeData});
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res, $Val extends ThemeState>
    implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isDark = freezed,
    Object? themeData = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ThemeStatus,
      isDark: freezed == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool?,
      themeData: freezed == themeData
          ? _value.themeData
          : themeData // ignore: cast_nullable_to_non_nullable
              as ThemeData?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeStateImplCopyWith<$Res>
    implements $ThemeStateCopyWith<$Res> {
  factory _$$ThemeStateImplCopyWith(
          _$ThemeStateImpl value, $Res Function(_$ThemeStateImpl) then) =
      __$$ThemeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeStatus status, bool? isDark, ThemeData? themeData});
}

/// @nodoc
class __$$ThemeStateImplCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$ThemeStateImpl>
    implements _$$ThemeStateImplCopyWith<$Res> {
  __$$ThemeStateImplCopyWithImpl(
      _$ThemeStateImpl _value, $Res Function(_$ThemeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isDark = freezed,
    Object? themeData = freezed,
  }) {
    return _then(_$ThemeStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ThemeStatus,
      isDark: freezed == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool?,
      themeData: freezed == themeData
          ? _value.themeData
          : themeData // ignore: cast_nullable_to_non_nullable
              as ThemeData?,
    ));
  }
}

/// @nodoc

class _$ThemeStateImpl implements _ThemeState {
  const _$ThemeStateImpl(
      {this.status = ThemeStatus.initial, this.isDark, this.themeData});

  @override
  @JsonKey()
  final ThemeStatus status;
  @override
  final bool? isDark;
  @override
  final ThemeData? themeData;

  @override
  String toString() {
    return 'ThemeState(status: $status, isDark: $isDark, themeData: $themeData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isDark, isDark) || other.isDark == isDark) &&
            (identical(other.themeData, themeData) ||
                other.themeData == themeData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, isDark, themeData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeStateImplCopyWith<_$ThemeStateImpl> get copyWith =>
      __$$ThemeStateImplCopyWithImpl<_$ThemeStateImpl>(this, _$identity);
}

abstract class _ThemeState implements ThemeState {
  const factory _ThemeState(
      {final ThemeStatus status,
      final bool? isDark,
      final ThemeData? themeData}) = _$ThemeStateImpl;

  @override
  ThemeStatus get status;
  @override
  bool? get isDark;
  @override
  ThemeData? get themeData;
  @override
  @JsonKey(ignore: true)
  _$$ThemeStateImplCopyWith<_$ThemeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
