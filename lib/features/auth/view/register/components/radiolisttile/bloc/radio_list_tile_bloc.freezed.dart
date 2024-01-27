// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'radio_list_tile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RadioListTileEvent {
  Role? get choosenRole => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Role? choosenRole) radioListTileSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Role? choosenRole)? radioListTileSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Role? choosenRole)? radioListTileSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RadioListTileSelected value)
        radioListTileSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RadioListTileSelected value)? radioListTileSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RadioListTileSelected value)? radioListTileSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RadioListTileEventCopyWith<RadioListTileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RadioListTileEventCopyWith<$Res> {
  factory $RadioListTileEventCopyWith(
          RadioListTileEvent value, $Res Function(RadioListTileEvent) then) =
      _$RadioListTileEventCopyWithImpl<$Res, RadioListTileEvent>;
  @useResult
  $Res call({Role? choosenRole});
}

/// @nodoc
class _$RadioListTileEventCopyWithImpl<$Res, $Val extends RadioListTileEvent>
    implements $RadioListTileEventCopyWith<$Res> {
  _$RadioListTileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? choosenRole = freezed,
  }) {
    return _then(_value.copyWith(
      choosenRole: freezed == choosenRole
          ? _value.choosenRole
          : choosenRole // ignore: cast_nullable_to_non_nullable
              as Role?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RadioListTileSelectedImplCopyWith<$Res>
    implements $RadioListTileEventCopyWith<$Res> {
  factory _$$RadioListTileSelectedImplCopyWith(
          _$RadioListTileSelectedImpl value,
          $Res Function(_$RadioListTileSelectedImpl) then) =
      __$$RadioListTileSelectedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Role? choosenRole});
}

/// @nodoc
class __$$RadioListTileSelectedImplCopyWithImpl<$Res>
    extends _$RadioListTileEventCopyWithImpl<$Res, _$RadioListTileSelectedImpl>
    implements _$$RadioListTileSelectedImplCopyWith<$Res> {
  __$$RadioListTileSelectedImplCopyWithImpl(_$RadioListTileSelectedImpl _value,
      $Res Function(_$RadioListTileSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? choosenRole = freezed,
  }) {
    return _then(_$RadioListTileSelectedImpl(
      freezed == choosenRole
          ? _value.choosenRole
          : choosenRole // ignore: cast_nullable_to_non_nullable
              as Role?,
    ));
  }
}

/// @nodoc

class _$RadioListTileSelectedImpl implements _RadioListTileSelected {
  const _$RadioListTileSelectedImpl(this.choosenRole);

  @override
  final Role? choosenRole;

  @override
  String toString() {
    return 'RadioListTileEvent.radioListTileSelected(choosenRole: $choosenRole)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RadioListTileSelectedImpl &&
            (identical(other.choosenRole, choosenRole) ||
                other.choosenRole == choosenRole));
  }

  @override
  int get hashCode => Object.hash(runtimeType, choosenRole);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RadioListTileSelectedImplCopyWith<_$RadioListTileSelectedImpl>
      get copyWith => __$$RadioListTileSelectedImplCopyWithImpl<
          _$RadioListTileSelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Role? choosenRole) radioListTileSelected,
  }) {
    return radioListTileSelected(choosenRole);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Role? choosenRole)? radioListTileSelected,
  }) {
    return radioListTileSelected?.call(choosenRole);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Role? choosenRole)? radioListTileSelected,
    required TResult orElse(),
  }) {
    if (radioListTileSelected != null) {
      return radioListTileSelected(choosenRole);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RadioListTileSelected value)
        radioListTileSelected,
  }) {
    return radioListTileSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RadioListTileSelected value)? radioListTileSelected,
  }) {
    return radioListTileSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RadioListTileSelected value)? radioListTileSelected,
    required TResult orElse(),
  }) {
    if (radioListTileSelected != null) {
      return radioListTileSelected(this);
    }
    return orElse();
  }
}

abstract class _RadioListTileSelected implements RadioListTileEvent {
  const factory _RadioListTileSelected(final Role? choosenRole) =
      _$RadioListTileSelectedImpl;

  @override
  Role? get choosenRole;
  @override
  @JsonKey(ignore: true)
  _$$RadioListTileSelectedImplCopyWith<_$RadioListTileSelectedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RadioListTileState {
  Role? get choosenRole => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RadioListTileStateCopyWith<RadioListTileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RadioListTileStateCopyWith<$Res> {
  factory $RadioListTileStateCopyWith(
          RadioListTileState value, $Res Function(RadioListTileState) then) =
      _$RadioListTileStateCopyWithImpl<$Res, RadioListTileState>;
  @useResult
  $Res call({Role? choosenRole});
}

/// @nodoc
class _$RadioListTileStateCopyWithImpl<$Res, $Val extends RadioListTileState>
    implements $RadioListTileStateCopyWith<$Res> {
  _$RadioListTileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? choosenRole = freezed,
  }) {
    return _then(_value.copyWith(
      choosenRole: freezed == choosenRole
          ? _value.choosenRole
          : choosenRole // ignore: cast_nullable_to_non_nullable
              as Role?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterBlocStateImplCopyWith<$Res>
    implements $RadioListTileStateCopyWith<$Res> {
  factory _$$RegisterBlocStateImplCopyWith(_$RegisterBlocStateImpl value,
          $Res Function(_$RegisterBlocStateImpl) then) =
      __$$RegisterBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Role? choosenRole});
}

/// @nodoc
class __$$RegisterBlocStateImplCopyWithImpl<$Res>
    extends _$RadioListTileStateCopyWithImpl<$Res, _$RegisterBlocStateImpl>
    implements _$$RegisterBlocStateImplCopyWith<$Res> {
  __$$RegisterBlocStateImplCopyWithImpl(_$RegisterBlocStateImpl _value,
      $Res Function(_$RegisterBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? choosenRole = freezed,
  }) {
    return _then(_$RegisterBlocStateImpl(
      choosenRole: freezed == choosenRole
          ? _value.choosenRole
          : choosenRole // ignore: cast_nullable_to_non_nullable
              as Role?,
    ));
  }
}

/// @nodoc

class _$RegisterBlocStateImpl implements _RegisterBlocState {
  const _$RegisterBlocStateImpl({this.choosenRole});

  @override
  final Role? choosenRole;

  @override
  String toString() {
    return 'RadioListTileState(choosenRole: $choosenRole)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterBlocStateImpl &&
            (identical(other.choosenRole, choosenRole) ||
                other.choosenRole == choosenRole));
  }

  @override
  int get hashCode => Object.hash(runtimeType, choosenRole);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterBlocStateImplCopyWith<_$RegisterBlocStateImpl> get copyWith =>
      __$$RegisterBlocStateImplCopyWithImpl<_$RegisterBlocStateImpl>(
          this, _$identity);
}

abstract class _RegisterBlocState implements RadioListTileState {
  const factory _RegisterBlocState({final Role? choosenRole}) =
      _$RegisterBlocStateImpl;

  @override
  Role? get choosenRole;
  @override
  @JsonKey(ignore: true)
  _$$RegisterBlocStateImplCopyWith<_$RegisterBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
