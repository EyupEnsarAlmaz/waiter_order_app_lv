// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tabbar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TabBarEvent {
  int? get newTabIndex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? newTabIndex) tabChangedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? newTabIndex)? tabChangedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? newTabIndex)? tabChangedEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TabChanged value) tabChangedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TabChanged value)? tabChangedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TabChanged value)? tabChangedEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TabBarEventCopyWith<TabBarEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabBarEventCopyWith<$Res> {
  factory $TabBarEventCopyWith(
          TabBarEvent value, $Res Function(TabBarEvent) then) =
      _$TabBarEventCopyWithImpl<$Res, TabBarEvent>;
  @useResult
  $Res call({int? newTabIndex});
}

/// @nodoc
class _$TabBarEventCopyWithImpl<$Res, $Val extends TabBarEvent>
    implements $TabBarEventCopyWith<$Res> {
  _$TabBarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newTabIndex = freezed,
  }) {
    return _then(_value.copyWith(
      newTabIndex: freezed == newTabIndex
          ? _value.newTabIndex
          : newTabIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TabChangedImplCopyWith<$Res>
    implements $TabBarEventCopyWith<$Res> {
  factory _$$TabChangedImplCopyWith(
          _$TabChangedImpl value, $Res Function(_$TabChangedImpl) then) =
      __$$TabChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? newTabIndex});
}

/// @nodoc
class __$$TabChangedImplCopyWithImpl<$Res>
    extends _$TabBarEventCopyWithImpl<$Res, _$TabChangedImpl>
    implements _$$TabChangedImplCopyWith<$Res> {
  __$$TabChangedImplCopyWithImpl(
      _$TabChangedImpl _value, $Res Function(_$TabChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newTabIndex = freezed,
  }) {
    return _then(_$TabChangedImpl(
      freezed == newTabIndex
          ? _value.newTabIndex
          : newTabIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$TabChangedImpl implements _TabChanged {
  const _$TabChangedImpl(this.newTabIndex);

  @override
  final int? newTabIndex;

  @override
  String toString() {
    return 'TabBarEvent.tabChangedEvent(newTabIndex: $newTabIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabChangedImpl &&
            (identical(other.newTabIndex, newTabIndex) ||
                other.newTabIndex == newTabIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newTabIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TabChangedImplCopyWith<_$TabChangedImpl> get copyWith =>
      __$$TabChangedImplCopyWithImpl<_$TabChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? newTabIndex) tabChangedEvent,
  }) {
    return tabChangedEvent(newTabIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? newTabIndex)? tabChangedEvent,
  }) {
    return tabChangedEvent?.call(newTabIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? newTabIndex)? tabChangedEvent,
    required TResult orElse(),
  }) {
    if (tabChangedEvent != null) {
      return tabChangedEvent(newTabIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TabChanged value) tabChangedEvent,
  }) {
    return tabChangedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TabChanged value)? tabChangedEvent,
  }) {
    return tabChangedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TabChanged value)? tabChangedEvent,
    required TResult orElse(),
  }) {
    if (tabChangedEvent != null) {
      return tabChangedEvent(this);
    }
    return orElse();
  }
}

abstract class _TabChanged implements TabBarEvent {
  const factory _TabChanged(final int? newTabIndex) = _$TabChangedImpl;

  @override
  int? get newTabIndex;
  @override
  @JsonKey(ignore: true)
  _$$TabChangedImplCopyWith<_$TabChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TabBarState {
  TabbarStatus get status => throw _privateConstructorUsedError;
  int? get newTabIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TabBarStateCopyWith<TabBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabBarStateCopyWith<$Res> {
  factory $TabBarStateCopyWith(
          TabBarState value, $Res Function(TabBarState) then) =
      _$TabBarStateCopyWithImpl<$Res, TabBarState>;
  @useResult
  $Res call({TabbarStatus status, int? newTabIndex});
}

/// @nodoc
class _$TabBarStateCopyWithImpl<$Res, $Val extends TabBarState>
    implements $TabBarStateCopyWith<$Res> {
  _$TabBarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? newTabIndex = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TabbarStatus,
      newTabIndex: freezed == newTabIndex
          ? _value.newTabIndex
          : newTabIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TabbarStateImplCopyWith<$Res>
    implements $TabBarStateCopyWith<$Res> {
  factory _$$TabbarStateImplCopyWith(
          _$TabbarStateImpl value, $Res Function(_$TabbarStateImpl) then) =
      __$$TabbarStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TabbarStatus status, int? newTabIndex});
}

/// @nodoc
class __$$TabbarStateImplCopyWithImpl<$Res>
    extends _$TabBarStateCopyWithImpl<$Res, _$TabbarStateImpl>
    implements _$$TabbarStateImplCopyWith<$Res> {
  __$$TabbarStateImplCopyWithImpl(
      _$TabbarStateImpl _value, $Res Function(_$TabbarStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? newTabIndex = freezed,
  }) {
    return _then(_$TabbarStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TabbarStatus,
      newTabIndex: freezed == newTabIndex
          ? _value.newTabIndex
          : newTabIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$TabbarStateImpl implements _TabbarState {
  const _$TabbarStateImpl(
      {this.status = TabbarStatus.initial, this.newTabIndex});

  @override
  @JsonKey()
  final TabbarStatus status;
  @override
  final int? newTabIndex;

  @override
  String toString() {
    return 'TabBarState(status: $status, newTabIndex: $newTabIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabbarStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.newTabIndex, newTabIndex) ||
                other.newTabIndex == newTabIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, newTabIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TabbarStateImplCopyWith<_$TabbarStateImpl> get copyWith =>
      __$$TabbarStateImplCopyWithImpl<_$TabbarStateImpl>(this, _$identity);
}

abstract class _TabbarState implements TabBarState {
  const factory _TabbarState(
      {final TabbarStatus status, final int? newTabIndex}) = _$TabbarStateImpl;

  @override
  TabbarStatus get status;
  @override
  int? get newTabIndex;
  @override
  @JsonKey(ignore: true)
  _$$TabbarStateImplCopyWith<_$TabbarStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
