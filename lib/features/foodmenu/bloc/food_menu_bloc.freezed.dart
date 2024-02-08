// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_menu_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FoodMenuBlocEvent {
  String? get collectionName => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? collectionName) getDataFromFirebase,
    required TResult Function(String? category, String? collectionName)
        getDataByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? collectionName)? getDataFromFirebase,
    TResult? Function(String? category, String? collectionName)?
        getDataByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? collectionName)? getDataFromFirebase,
    TResult Function(String? category, String? collectionName)?
        getDataByCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDataFromFirebase value) getDataFromFirebase,
    required TResult Function(_GetDataByCategory value) getDataByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDataFromFirebase value)? getDataFromFirebase,
    TResult? Function(_GetDataByCategory value)? getDataByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDataFromFirebase value)? getDataFromFirebase,
    TResult Function(_GetDataByCategory value)? getDataByCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FoodMenuBlocEventCopyWith<FoodMenuBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodMenuBlocEventCopyWith<$Res> {
  factory $FoodMenuBlocEventCopyWith(
          FoodMenuBlocEvent value, $Res Function(FoodMenuBlocEvent) then) =
      _$FoodMenuBlocEventCopyWithImpl<$Res, FoodMenuBlocEvent>;
  @useResult
  $Res call({String? collectionName});
}

/// @nodoc
class _$FoodMenuBlocEventCopyWithImpl<$Res, $Val extends FoodMenuBlocEvent>
    implements $FoodMenuBlocEventCopyWith<$Res> {
  _$FoodMenuBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectionName = freezed,
  }) {
    return _then(_value.copyWith(
      collectionName: freezed == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetDataFromFirebaseImplCopyWith<$Res>
    implements $FoodMenuBlocEventCopyWith<$Res> {
  factory _$$GetDataFromFirebaseImplCopyWith(_$GetDataFromFirebaseImpl value,
          $Res Function(_$GetDataFromFirebaseImpl) then) =
      __$$GetDataFromFirebaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? collectionName});
}

/// @nodoc
class __$$GetDataFromFirebaseImplCopyWithImpl<$Res>
    extends _$FoodMenuBlocEventCopyWithImpl<$Res, _$GetDataFromFirebaseImpl>
    implements _$$GetDataFromFirebaseImplCopyWith<$Res> {
  __$$GetDataFromFirebaseImplCopyWithImpl(_$GetDataFromFirebaseImpl _value,
      $Res Function(_$GetDataFromFirebaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectionName = freezed,
  }) {
    return _then(_$GetDataFromFirebaseImpl(
      freezed == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetDataFromFirebaseImpl implements _GetDataFromFirebase {
  const _$GetDataFromFirebaseImpl(this.collectionName);

  @override
  final String? collectionName;

  @override
  String toString() {
    return 'FoodMenuBlocEvent.getDataFromFirebase(collectionName: $collectionName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDataFromFirebaseImpl &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, collectionName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDataFromFirebaseImplCopyWith<_$GetDataFromFirebaseImpl> get copyWith =>
      __$$GetDataFromFirebaseImplCopyWithImpl<_$GetDataFromFirebaseImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? collectionName) getDataFromFirebase,
    required TResult Function(String? category, String? collectionName)
        getDataByCategory,
  }) {
    return getDataFromFirebase(collectionName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? collectionName)? getDataFromFirebase,
    TResult? Function(String? category, String? collectionName)?
        getDataByCategory,
  }) {
    return getDataFromFirebase?.call(collectionName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? collectionName)? getDataFromFirebase,
    TResult Function(String? category, String? collectionName)?
        getDataByCategory,
    required TResult orElse(),
  }) {
    if (getDataFromFirebase != null) {
      return getDataFromFirebase(collectionName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDataFromFirebase value) getDataFromFirebase,
    required TResult Function(_GetDataByCategory value) getDataByCategory,
  }) {
    return getDataFromFirebase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDataFromFirebase value)? getDataFromFirebase,
    TResult? Function(_GetDataByCategory value)? getDataByCategory,
  }) {
    return getDataFromFirebase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDataFromFirebase value)? getDataFromFirebase,
    TResult Function(_GetDataByCategory value)? getDataByCategory,
    required TResult orElse(),
  }) {
    if (getDataFromFirebase != null) {
      return getDataFromFirebase(this);
    }
    return orElse();
  }
}

abstract class _GetDataFromFirebase implements FoodMenuBlocEvent {
  const factory _GetDataFromFirebase(final String? collectionName) =
      _$GetDataFromFirebaseImpl;

  @override
  String? get collectionName;
  @override
  @JsonKey(ignore: true)
  _$$GetDataFromFirebaseImplCopyWith<_$GetDataFromFirebaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDataByCategoryImplCopyWith<$Res>
    implements $FoodMenuBlocEventCopyWith<$Res> {
  factory _$$GetDataByCategoryImplCopyWith(_$GetDataByCategoryImpl value,
          $Res Function(_$GetDataByCategoryImpl) then) =
      __$$GetDataByCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? category, String? collectionName});
}

/// @nodoc
class __$$GetDataByCategoryImplCopyWithImpl<$Res>
    extends _$FoodMenuBlocEventCopyWithImpl<$Res, _$GetDataByCategoryImpl>
    implements _$$GetDataByCategoryImplCopyWith<$Res> {
  __$$GetDataByCategoryImplCopyWithImpl(_$GetDataByCategoryImpl _value,
      $Res Function(_$GetDataByCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? collectionName = freezed,
  }) {
    return _then(_$GetDataByCategoryImpl(
      freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetDataByCategoryImpl implements _GetDataByCategory {
  const _$GetDataByCategoryImpl(this.category, this.collectionName);

  @override
  final String? category;
  @override
  final String? collectionName;

  @override
  String toString() {
    return 'FoodMenuBlocEvent.getDataByCategory(category: $category, collectionName: $collectionName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDataByCategoryImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, collectionName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDataByCategoryImplCopyWith<_$GetDataByCategoryImpl> get copyWith =>
      __$$GetDataByCategoryImplCopyWithImpl<_$GetDataByCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? collectionName) getDataFromFirebase,
    required TResult Function(String? category, String? collectionName)
        getDataByCategory,
  }) {
    return getDataByCategory(category, collectionName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? collectionName)? getDataFromFirebase,
    TResult? Function(String? category, String? collectionName)?
        getDataByCategory,
  }) {
    return getDataByCategory?.call(category, collectionName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? collectionName)? getDataFromFirebase,
    TResult Function(String? category, String? collectionName)?
        getDataByCategory,
    required TResult orElse(),
  }) {
    if (getDataByCategory != null) {
      return getDataByCategory(category, collectionName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDataFromFirebase value) getDataFromFirebase,
    required TResult Function(_GetDataByCategory value) getDataByCategory,
  }) {
    return getDataByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDataFromFirebase value)? getDataFromFirebase,
    TResult? Function(_GetDataByCategory value)? getDataByCategory,
  }) {
    return getDataByCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDataFromFirebase value)? getDataFromFirebase,
    TResult Function(_GetDataByCategory value)? getDataByCategory,
    required TResult orElse(),
  }) {
    if (getDataByCategory != null) {
      return getDataByCategory(this);
    }
    return orElse();
  }
}

abstract class _GetDataByCategory implements FoodMenuBlocEvent {
  const factory _GetDataByCategory(
          final String? category, final String? collectionName) =
      _$GetDataByCategoryImpl;

  String? get category;
  @override
  String? get collectionName;
  @override
  @JsonKey(ignore: true)
  _$$GetDataByCategoryImplCopyWith<_$GetDataByCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FoodMenuBlocState {
  FoodMenuStatus get status => throw _privateConstructorUsedError;
  List<FoodModel>? get foodList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FoodMenuBlocStateCopyWith<FoodMenuBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodMenuBlocStateCopyWith<$Res> {
  factory $FoodMenuBlocStateCopyWith(
          FoodMenuBlocState value, $Res Function(FoodMenuBlocState) then) =
      _$FoodMenuBlocStateCopyWithImpl<$Res, FoodMenuBlocState>;
  @useResult
  $Res call({FoodMenuStatus status, List<FoodModel>? foodList});
}

/// @nodoc
class _$FoodMenuBlocStateCopyWithImpl<$Res, $Val extends FoodMenuBlocState>
    implements $FoodMenuBlocStateCopyWith<$Res> {
  _$FoodMenuBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? foodList = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FoodMenuStatus,
      foodList: freezed == foodList
          ? _value.foodList
          : foodList // ignore: cast_nullable_to_non_nullable
              as List<FoodModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterBlocStateImplCopyWith<$Res>
    implements $FoodMenuBlocStateCopyWith<$Res> {
  factory _$$RegisterBlocStateImplCopyWith(_$RegisterBlocStateImpl value,
          $Res Function(_$RegisterBlocStateImpl) then) =
      __$$RegisterBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FoodMenuStatus status, List<FoodModel>? foodList});
}

/// @nodoc
class __$$RegisterBlocStateImplCopyWithImpl<$Res>
    extends _$FoodMenuBlocStateCopyWithImpl<$Res, _$RegisterBlocStateImpl>
    implements _$$RegisterBlocStateImplCopyWith<$Res> {
  __$$RegisterBlocStateImplCopyWithImpl(_$RegisterBlocStateImpl _value,
      $Res Function(_$RegisterBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? foodList = freezed,
  }) {
    return _then(_$RegisterBlocStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FoodMenuStatus,
      foodList: freezed == foodList
          ? _value._foodList
          : foodList // ignore: cast_nullable_to_non_nullable
              as List<FoodModel>?,
    ));
  }
}

/// @nodoc

class _$RegisterBlocStateImpl implements _RegisterBlocState {
  const _$RegisterBlocStateImpl(
      {this.status = FoodMenuStatus.initial, final List<FoodModel>? foodList})
      : _foodList = foodList;

  @override
  @JsonKey()
  final FoodMenuStatus status;
  final List<FoodModel>? _foodList;
  @override
  List<FoodModel>? get foodList {
    final value = _foodList;
    if (value == null) return null;
    if (_foodList is EqualUnmodifiableListView) return _foodList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FoodMenuBlocState(status: $status, foodList: $foodList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterBlocStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._foodList, _foodList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_foodList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterBlocStateImplCopyWith<_$RegisterBlocStateImpl> get copyWith =>
      __$$RegisterBlocStateImplCopyWithImpl<_$RegisterBlocStateImpl>(
          this, _$identity);
}

abstract class _RegisterBlocState implements FoodMenuBlocState {
  const factory _RegisterBlocState(
      {final FoodMenuStatus status,
      final List<FoodModel>? foodList}) = _$RegisterBlocStateImpl;

  @override
  FoodMenuStatus get status;
  @override
  List<FoodModel>? get foodList;
  @override
  @JsonKey(ignore: true)
  _$$RegisterBlocStateImplCopyWith<_$RegisterBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
