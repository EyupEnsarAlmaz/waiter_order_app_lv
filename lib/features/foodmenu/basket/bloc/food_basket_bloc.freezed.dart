// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_basket_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FoodBasketEvent {
  FoodModel? get food => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FoodModel? food) addBasketFood,
    required TResult Function(FoodModel? food) removeBasketFood,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FoodModel? food)? addBasketFood,
    TResult? Function(FoodModel? food)? removeBasketFood,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FoodModel? food)? addBasketFood,
    TResult Function(FoodModel? food)? removeBasketFood,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddBasketFood value) addBasketFood,
    required TResult Function(_RemoveBasketFood value) removeBasketFood,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddBasketFood value)? addBasketFood,
    TResult? Function(_RemoveBasketFood value)? removeBasketFood,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddBasketFood value)? addBasketFood,
    TResult Function(_RemoveBasketFood value)? removeBasketFood,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FoodBasketEventCopyWith<FoodBasketEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodBasketEventCopyWith<$Res> {
  factory $FoodBasketEventCopyWith(
          FoodBasketEvent value, $Res Function(FoodBasketEvent) then) =
      _$FoodBasketEventCopyWithImpl<$Res, FoodBasketEvent>;
  @useResult
  $Res call({FoodModel? food});
}

/// @nodoc
class _$FoodBasketEventCopyWithImpl<$Res, $Val extends FoodBasketEvent>
    implements $FoodBasketEventCopyWith<$Res> {
  _$FoodBasketEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? food = freezed,
  }) {
    return _then(_value.copyWith(
      food: freezed == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as FoodModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddBasketFoodImplCopyWith<$Res>
    implements $FoodBasketEventCopyWith<$Res> {
  factory _$$AddBasketFoodImplCopyWith(
          _$AddBasketFoodImpl value, $Res Function(_$AddBasketFoodImpl) then) =
      __$$AddBasketFoodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FoodModel? food});
}

/// @nodoc
class __$$AddBasketFoodImplCopyWithImpl<$Res>
    extends _$FoodBasketEventCopyWithImpl<$Res, _$AddBasketFoodImpl>
    implements _$$AddBasketFoodImplCopyWith<$Res> {
  __$$AddBasketFoodImplCopyWithImpl(
      _$AddBasketFoodImpl _value, $Res Function(_$AddBasketFoodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? food = freezed,
  }) {
    return _then(_$AddBasketFoodImpl(
      freezed == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as FoodModel?,
    ));
  }
}

/// @nodoc

class _$AddBasketFoodImpl implements _AddBasketFood {
  const _$AddBasketFoodImpl(this.food);

  @override
  final FoodModel? food;

  @override
  String toString() {
    return 'FoodBasketEvent.addBasketFood(food: $food)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddBasketFoodImpl &&
            (identical(other.food, food) || other.food == food));
  }

  @override
  int get hashCode => Object.hash(runtimeType, food);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddBasketFoodImplCopyWith<_$AddBasketFoodImpl> get copyWith =>
      __$$AddBasketFoodImplCopyWithImpl<_$AddBasketFoodImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FoodModel? food) addBasketFood,
    required TResult Function(FoodModel? food) removeBasketFood,
  }) {
    return addBasketFood(food);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FoodModel? food)? addBasketFood,
    TResult? Function(FoodModel? food)? removeBasketFood,
  }) {
    return addBasketFood?.call(food);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FoodModel? food)? addBasketFood,
    TResult Function(FoodModel? food)? removeBasketFood,
    required TResult orElse(),
  }) {
    if (addBasketFood != null) {
      return addBasketFood(food);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddBasketFood value) addBasketFood,
    required TResult Function(_RemoveBasketFood value) removeBasketFood,
  }) {
    return addBasketFood(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddBasketFood value)? addBasketFood,
    TResult? Function(_RemoveBasketFood value)? removeBasketFood,
  }) {
    return addBasketFood?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddBasketFood value)? addBasketFood,
    TResult Function(_RemoveBasketFood value)? removeBasketFood,
    required TResult orElse(),
  }) {
    if (addBasketFood != null) {
      return addBasketFood(this);
    }
    return orElse();
  }
}

abstract class _AddBasketFood implements FoodBasketEvent {
  const factory _AddBasketFood(final FoodModel? food) = _$AddBasketFoodImpl;

  @override
  FoodModel? get food;
  @override
  @JsonKey(ignore: true)
  _$$AddBasketFoodImplCopyWith<_$AddBasketFoodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveBasketFoodImplCopyWith<$Res>
    implements $FoodBasketEventCopyWith<$Res> {
  factory _$$RemoveBasketFoodImplCopyWith(_$RemoveBasketFoodImpl value,
          $Res Function(_$RemoveBasketFoodImpl) then) =
      __$$RemoveBasketFoodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FoodModel? food});
}

/// @nodoc
class __$$RemoveBasketFoodImplCopyWithImpl<$Res>
    extends _$FoodBasketEventCopyWithImpl<$Res, _$RemoveBasketFoodImpl>
    implements _$$RemoveBasketFoodImplCopyWith<$Res> {
  __$$RemoveBasketFoodImplCopyWithImpl(_$RemoveBasketFoodImpl _value,
      $Res Function(_$RemoveBasketFoodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? food = freezed,
  }) {
    return _then(_$RemoveBasketFoodImpl(
      freezed == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as FoodModel?,
    ));
  }
}

/// @nodoc

class _$RemoveBasketFoodImpl implements _RemoveBasketFood {
  const _$RemoveBasketFoodImpl(this.food);

  @override
  final FoodModel? food;

  @override
  String toString() {
    return 'FoodBasketEvent.removeBasketFood(food: $food)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveBasketFoodImpl &&
            (identical(other.food, food) || other.food == food));
  }

  @override
  int get hashCode => Object.hash(runtimeType, food);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveBasketFoodImplCopyWith<_$RemoveBasketFoodImpl> get copyWith =>
      __$$RemoveBasketFoodImplCopyWithImpl<_$RemoveBasketFoodImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FoodModel? food) addBasketFood,
    required TResult Function(FoodModel? food) removeBasketFood,
  }) {
    return removeBasketFood(food);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FoodModel? food)? addBasketFood,
    TResult? Function(FoodModel? food)? removeBasketFood,
  }) {
    return removeBasketFood?.call(food);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FoodModel? food)? addBasketFood,
    TResult Function(FoodModel? food)? removeBasketFood,
    required TResult orElse(),
  }) {
    if (removeBasketFood != null) {
      return removeBasketFood(food);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddBasketFood value) addBasketFood,
    required TResult Function(_RemoveBasketFood value) removeBasketFood,
  }) {
    return removeBasketFood(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddBasketFood value)? addBasketFood,
    TResult? Function(_RemoveBasketFood value)? removeBasketFood,
  }) {
    return removeBasketFood?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddBasketFood value)? addBasketFood,
    TResult Function(_RemoveBasketFood value)? removeBasketFood,
    required TResult orElse(),
  }) {
    if (removeBasketFood != null) {
      return removeBasketFood(this);
    }
    return orElse();
  }
}

abstract class _RemoveBasketFood implements FoodBasketEvent {
  const factory _RemoveBasketFood(final FoodModel? food) =
      _$RemoveBasketFoodImpl;

  @override
  FoodModel? get food;
  @override
  @JsonKey(ignore: true)
  _$$RemoveBasketFoodImplCopyWith<_$RemoveBasketFoodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FoodBasketState {
  FoodBasketStatus get status => throw _privateConstructorUsedError;
  List<FoodModel>? get basketItem => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FoodBasketStateCopyWith<FoodBasketState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodBasketStateCopyWith<$Res> {
  factory $FoodBasketStateCopyWith(
          FoodBasketState value, $Res Function(FoodBasketState) then) =
      _$FoodBasketStateCopyWithImpl<$Res, FoodBasketState>;
  @useResult
  $Res call({FoodBasketStatus status, List<FoodModel>? basketItem});
}

/// @nodoc
class _$FoodBasketStateCopyWithImpl<$Res, $Val extends FoodBasketState>
    implements $FoodBasketStateCopyWith<$Res> {
  _$FoodBasketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? basketItem = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FoodBasketStatus,
      basketItem: freezed == basketItem
          ? _value.basketItem
          : basketItem // ignore: cast_nullable_to_non_nullable
              as List<FoodModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FoodBasketStateImplCopyWith<$Res>
    implements $FoodBasketStateCopyWith<$Res> {
  factory _$$FoodBasketStateImplCopyWith(_$FoodBasketStateImpl value,
          $Res Function(_$FoodBasketStateImpl) then) =
      __$$FoodBasketStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FoodBasketStatus status, List<FoodModel>? basketItem});
}

/// @nodoc
class __$$FoodBasketStateImplCopyWithImpl<$Res>
    extends _$FoodBasketStateCopyWithImpl<$Res, _$FoodBasketStateImpl>
    implements _$$FoodBasketStateImplCopyWith<$Res> {
  __$$FoodBasketStateImplCopyWithImpl(
      _$FoodBasketStateImpl _value, $Res Function(_$FoodBasketStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? basketItem = freezed,
  }) {
    return _then(_$FoodBasketStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FoodBasketStatus,
      basketItem: freezed == basketItem
          ? _value._basketItem
          : basketItem // ignore: cast_nullable_to_non_nullable
              as List<FoodModel>?,
    ));
  }
}

/// @nodoc

class _$FoodBasketStateImpl implements _FoodBasketState {
  const _$FoodBasketStateImpl(
      {this.status = FoodBasketStatus.initial,
      final List<FoodModel>? basketItem})
      : _basketItem = basketItem;

  @override
  @JsonKey()
  final FoodBasketStatus status;
  final List<FoodModel>? _basketItem;
  @override
  List<FoodModel>? get basketItem {
    final value = _basketItem;
    if (value == null) return null;
    if (_basketItem is EqualUnmodifiableListView) return _basketItem;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FoodBasketState(status: $status, basketItem: $basketItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodBasketStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._basketItem, _basketItem));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_basketItem));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodBasketStateImplCopyWith<_$FoodBasketStateImpl> get copyWith =>
      __$$FoodBasketStateImplCopyWithImpl<_$FoodBasketStateImpl>(
          this, _$identity);
}

abstract class _FoodBasketState implements FoodBasketState {
  const factory _FoodBasketState(
      {final FoodBasketStatus status,
      final List<FoodModel>? basketItem}) = _$FoodBasketStateImpl;

  @override
  FoodBasketStatus get status;
  @override
  List<FoodModel>? get basketItem;
  @override
  @JsonKey(ignore: true)
  _$$FoodBasketStateImplCopyWith<_$FoodBasketStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
