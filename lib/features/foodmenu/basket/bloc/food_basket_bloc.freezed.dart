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
  int? get tableNumber => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FoodModel? food, int? tableNumber) addBasketFood,
    required TResult Function(String? noteText, int? tableNumber) addNotes,
    required TResult Function(FoodModel? food, int? tableNumber)
        removeBasketFood,
    required TResult Function(
            Map<int, List<FoodModel>?>? basketMaps, int? tableNumber)
        removeAllFood,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FoodModel? food, int? tableNumber)? addBasketFood,
    TResult? Function(String? noteText, int? tableNumber)? addNotes,
    TResult? Function(FoodModel? food, int? tableNumber)? removeBasketFood,
    TResult? Function(Map<int, List<FoodModel>?>? basketMaps, int? tableNumber)?
        removeAllFood,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FoodModel? food, int? tableNumber)? addBasketFood,
    TResult Function(String? noteText, int? tableNumber)? addNotes,
    TResult Function(FoodModel? food, int? tableNumber)? removeBasketFood,
    TResult Function(Map<int, List<FoodModel>?>? basketMaps, int? tableNumber)?
        removeAllFood,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddBasketFood value) addBasketFood,
    required TResult Function(_AddNotes value) addNotes,
    required TResult Function(_RemoveBasketFood value) removeBasketFood,
    required TResult Function(_RemoveAllFood value) removeAllFood,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddBasketFood value)? addBasketFood,
    TResult? Function(_AddNotes value)? addNotes,
    TResult? Function(_RemoveBasketFood value)? removeBasketFood,
    TResult? Function(_RemoveAllFood value)? removeAllFood,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddBasketFood value)? addBasketFood,
    TResult Function(_AddNotes value)? addNotes,
    TResult Function(_RemoveBasketFood value)? removeBasketFood,
    TResult Function(_RemoveAllFood value)? removeAllFood,
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
  $Res call({int? tableNumber});
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
    Object? tableNumber = freezed,
  }) {
    return _then(_value.copyWith(
      tableNumber: freezed == tableNumber
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as int?,
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
  $Res call({FoodModel? food, int? tableNumber});
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
    Object? tableNumber = freezed,
  }) {
    return _then(_$AddBasketFoodImpl(
      freezed == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as FoodModel?,
      freezed == tableNumber
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$AddBasketFoodImpl implements _AddBasketFood {
  const _$AddBasketFoodImpl(this.food, this.tableNumber);

  @override
  final FoodModel? food;
  @override
  final int? tableNumber;

  @override
  String toString() {
    return 'FoodBasketEvent.addBasketFood(food: $food, tableNumber: $tableNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddBasketFoodImpl &&
            (identical(other.food, food) || other.food == food) &&
            (identical(other.tableNumber, tableNumber) ||
                other.tableNumber == tableNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, food, tableNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddBasketFoodImplCopyWith<_$AddBasketFoodImpl> get copyWith =>
      __$$AddBasketFoodImplCopyWithImpl<_$AddBasketFoodImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FoodModel? food, int? tableNumber) addBasketFood,
    required TResult Function(String? noteText, int? tableNumber) addNotes,
    required TResult Function(FoodModel? food, int? tableNumber)
        removeBasketFood,
    required TResult Function(
            Map<int, List<FoodModel>?>? basketMaps, int? tableNumber)
        removeAllFood,
  }) {
    return addBasketFood(food, tableNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FoodModel? food, int? tableNumber)? addBasketFood,
    TResult? Function(String? noteText, int? tableNumber)? addNotes,
    TResult? Function(FoodModel? food, int? tableNumber)? removeBasketFood,
    TResult? Function(Map<int, List<FoodModel>?>? basketMaps, int? tableNumber)?
        removeAllFood,
  }) {
    return addBasketFood?.call(food, tableNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FoodModel? food, int? tableNumber)? addBasketFood,
    TResult Function(String? noteText, int? tableNumber)? addNotes,
    TResult Function(FoodModel? food, int? tableNumber)? removeBasketFood,
    TResult Function(Map<int, List<FoodModel>?>? basketMaps, int? tableNumber)?
        removeAllFood,
    required TResult orElse(),
  }) {
    if (addBasketFood != null) {
      return addBasketFood(food, tableNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddBasketFood value) addBasketFood,
    required TResult Function(_AddNotes value) addNotes,
    required TResult Function(_RemoveBasketFood value) removeBasketFood,
    required TResult Function(_RemoveAllFood value) removeAllFood,
  }) {
    return addBasketFood(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddBasketFood value)? addBasketFood,
    TResult? Function(_AddNotes value)? addNotes,
    TResult? Function(_RemoveBasketFood value)? removeBasketFood,
    TResult? Function(_RemoveAllFood value)? removeAllFood,
  }) {
    return addBasketFood?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddBasketFood value)? addBasketFood,
    TResult Function(_AddNotes value)? addNotes,
    TResult Function(_RemoveBasketFood value)? removeBasketFood,
    TResult Function(_RemoveAllFood value)? removeAllFood,
    required TResult orElse(),
  }) {
    if (addBasketFood != null) {
      return addBasketFood(this);
    }
    return orElse();
  }
}

abstract class _AddBasketFood implements FoodBasketEvent {
  const factory _AddBasketFood(final FoodModel? food, final int? tableNumber) =
      _$AddBasketFoodImpl;

  FoodModel? get food;
  @override
  int? get tableNumber;
  @override
  @JsonKey(ignore: true)
  _$$AddBasketFoodImplCopyWith<_$AddBasketFoodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddNotesImplCopyWith<$Res>
    implements $FoodBasketEventCopyWith<$Res> {
  factory _$$AddNotesImplCopyWith(
          _$AddNotesImpl value, $Res Function(_$AddNotesImpl) then) =
      __$$AddNotesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? noteText, int? tableNumber});
}

/// @nodoc
class __$$AddNotesImplCopyWithImpl<$Res>
    extends _$FoodBasketEventCopyWithImpl<$Res, _$AddNotesImpl>
    implements _$$AddNotesImplCopyWith<$Res> {
  __$$AddNotesImplCopyWithImpl(
      _$AddNotesImpl _value, $Res Function(_$AddNotesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteText = freezed,
    Object? tableNumber = freezed,
  }) {
    return _then(_$AddNotesImpl(
      freezed == noteText
          ? _value.noteText
          : noteText // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == tableNumber
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$AddNotesImpl implements _AddNotes {
  const _$AddNotesImpl(this.noteText, this.tableNumber);

  @override
  final String? noteText;
  @override
  final int? tableNumber;

  @override
  String toString() {
    return 'FoodBasketEvent.addNotes(noteText: $noteText, tableNumber: $tableNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNotesImpl &&
            (identical(other.noteText, noteText) ||
                other.noteText == noteText) &&
            (identical(other.tableNumber, tableNumber) ||
                other.tableNumber == tableNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, noteText, tableNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNotesImplCopyWith<_$AddNotesImpl> get copyWith =>
      __$$AddNotesImplCopyWithImpl<_$AddNotesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FoodModel? food, int? tableNumber) addBasketFood,
    required TResult Function(String? noteText, int? tableNumber) addNotes,
    required TResult Function(FoodModel? food, int? tableNumber)
        removeBasketFood,
    required TResult Function(
            Map<int, List<FoodModel>?>? basketMaps, int? tableNumber)
        removeAllFood,
  }) {
    return addNotes(noteText, tableNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FoodModel? food, int? tableNumber)? addBasketFood,
    TResult? Function(String? noteText, int? tableNumber)? addNotes,
    TResult? Function(FoodModel? food, int? tableNumber)? removeBasketFood,
    TResult? Function(Map<int, List<FoodModel>?>? basketMaps, int? tableNumber)?
        removeAllFood,
  }) {
    return addNotes?.call(noteText, tableNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FoodModel? food, int? tableNumber)? addBasketFood,
    TResult Function(String? noteText, int? tableNumber)? addNotes,
    TResult Function(FoodModel? food, int? tableNumber)? removeBasketFood,
    TResult Function(Map<int, List<FoodModel>?>? basketMaps, int? tableNumber)?
        removeAllFood,
    required TResult orElse(),
  }) {
    if (addNotes != null) {
      return addNotes(noteText, tableNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddBasketFood value) addBasketFood,
    required TResult Function(_AddNotes value) addNotes,
    required TResult Function(_RemoveBasketFood value) removeBasketFood,
    required TResult Function(_RemoveAllFood value) removeAllFood,
  }) {
    return addNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddBasketFood value)? addBasketFood,
    TResult? Function(_AddNotes value)? addNotes,
    TResult? Function(_RemoveBasketFood value)? removeBasketFood,
    TResult? Function(_RemoveAllFood value)? removeAllFood,
  }) {
    return addNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddBasketFood value)? addBasketFood,
    TResult Function(_AddNotes value)? addNotes,
    TResult Function(_RemoveBasketFood value)? removeBasketFood,
    TResult Function(_RemoveAllFood value)? removeAllFood,
    required TResult orElse(),
  }) {
    if (addNotes != null) {
      return addNotes(this);
    }
    return orElse();
  }
}

abstract class _AddNotes implements FoodBasketEvent {
  const factory _AddNotes(final String? noteText, final int? tableNumber) =
      _$AddNotesImpl;

  String? get noteText;
  @override
  int? get tableNumber;
  @override
  @JsonKey(ignore: true)
  _$$AddNotesImplCopyWith<_$AddNotesImpl> get copyWith =>
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
  $Res call({FoodModel? food, int? tableNumber});
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
    Object? tableNumber = freezed,
  }) {
    return _then(_$RemoveBasketFoodImpl(
      freezed == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as FoodModel?,
      freezed == tableNumber
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$RemoveBasketFoodImpl implements _RemoveBasketFood {
  const _$RemoveBasketFoodImpl(this.food, this.tableNumber);

  @override
  final FoodModel? food;
  @override
  final int? tableNumber;

  @override
  String toString() {
    return 'FoodBasketEvent.removeBasketFood(food: $food, tableNumber: $tableNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveBasketFoodImpl &&
            (identical(other.food, food) || other.food == food) &&
            (identical(other.tableNumber, tableNumber) ||
                other.tableNumber == tableNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, food, tableNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveBasketFoodImplCopyWith<_$RemoveBasketFoodImpl> get copyWith =>
      __$$RemoveBasketFoodImplCopyWithImpl<_$RemoveBasketFoodImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FoodModel? food, int? tableNumber) addBasketFood,
    required TResult Function(String? noteText, int? tableNumber) addNotes,
    required TResult Function(FoodModel? food, int? tableNumber)
        removeBasketFood,
    required TResult Function(
            Map<int, List<FoodModel>?>? basketMaps, int? tableNumber)
        removeAllFood,
  }) {
    return removeBasketFood(food, tableNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FoodModel? food, int? tableNumber)? addBasketFood,
    TResult? Function(String? noteText, int? tableNumber)? addNotes,
    TResult? Function(FoodModel? food, int? tableNumber)? removeBasketFood,
    TResult? Function(Map<int, List<FoodModel>?>? basketMaps, int? tableNumber)?
        removeAllFood,
  }) {
    return removeBasketFood?.call(food, tableNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FoodModel? food, int? tableNumber)? addBasketFood,
    TResult Function(String? noteText, int? tableNumber)? addNotes,
    TResult Function(FoodModel? food, int? tableNumber)? removeBasketFood,
    TResult Function(Map<int, List<FoodModel>?>? basketMaps, int? tableNumber)?
        removeAllFood,
    required TResult orElse(),
  }) {
    if (removeBasketFood != null) {
      return removeBasketFood(food, tableNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddBasketFood value) addBasketFood,
    required TResult Function(_AddNotes value) addNotes,
    required TResult Function(_RemoveBasketFood value) removeBasketFood,
    required TResult Function(_RemoveAllFood value) removeAllFood,
  }) {
    return removeBasketFood(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddBasketFood value)? addBasketFood,
    TResult? Function(_AddNotes value)? addNotes,
    TResult? Function(_RemoveBasketFood value)? removeBasketFood,
    TResult? Function(_RemoveAllFood value)? removeAllFood,
  }) {
    return removeBasketFood?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddBasketFood value)? addBasketFood,
    TResult Function(_AddNotes value)? addNotes,
    TResult Function(_RemoveBasketFood value)? removeBasketFood,
    TResult Function(_RemoveAllFood value)? removeAllFood,
    required TResult orElse(),
  }) {
    if (removeBasketFood != null) {
      return removeBasketFood(this);
    }
    return orElse();
  }
}

abstract class _RemoveBasketFood implements FoodBasketEvent {
  const factory _RemoveBasketFood(
      final FoodModel? food, final int? tableNumber) = _$RemoveBasketFoodImpl;

  FoodModel? get food;
  @override
  int? get tableNumber;
  @override
  @JsonKey(ignore: true)
  _$$RemoveBasketFoodImplCopyWith<_$RemoveBasketFoodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveAllFoodImplCopyWith<$Res>
    implements $FoodBasketEventCopyWith<$Res> {
  factory _$$RemoveAllFoodImplCopyWith(
          _$RemoveAllFoodImpl value, $Res Function(_$RemoveAllFoodImpl) then) =
      __$$RemoveAllFoodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<int, List<FoodModel>?>? basketMaps, int? tableNumber});
}

/// @nodoc
class __$$RemoveAllFoodImplCopyWithImpl<$Res>
    extends _$FoodBasketEventCopyWithImpl<$Res, _$RemoveAllFoodImpl>
    implements _$$RemoveAllFoodImplCopyWith<$Res> {
  __$$RemoveAllFoodImplCopyWithImpl(
      _$RemoveAllFoodImpl _value, $Res Function(_$RemoveAllFoodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basketMaps = freezed,
    Object? tableNumber = freezed,
  }) {
    return _then(_$RemoveAllFoodImpl(
      freezed == basketMaps
          ? _value._basketMaps
          : basketMaps // ignore: cast_nullable_to_non_nullable
              as Map<int, List<FoodModel>?>?,
      freezed == tableNumber
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$RemoveAllFoodImpl implements _RemoveAllFood {
  const _$RemoveAllFoodImpl(
      final Map<int, List<FoodModel>?>? basketMaps, this.tableNumber)
      : _basketMaps = basketMaps;

  final Map<int, List<FoodModel>?>? _basketMaps;
  @override
  Map<int, List<FoodModel>?>? get basketMaps {
    final value = _basketMaps;
    if (value == null) return null;
    if (_basketMaps is EqualUnmodifiableMapView) return _basketMaps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final int? tableNumber;

  @override
  String toString() {
    return 'FoodBasketEvent.removeAllFood(basketMaps: $basketMaps, tableNumber: $tableNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveAllFoodImpl &&
            const DeepCollectionEquality()
                .equals(other._basketMaps, _basketMaps) &&
            (identical(other.tableNumber, tableNumber) ||
                other.tableNumber == tableNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_basketMaps), tableNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveAllFoodImplCopyWith<_$RemoveAllFoodImpl> get copyWith =>
      __$$RemoveAllFoodImplCopyWithImpl<_$RemoveAllFoodImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FoodModel? food, int? tableNumber) addBasketFood,
    required TResult Function(String? noteText, int? tableNumber) addNotes,
    required TResult Function(FoodModel? food, int? tableNumber)
        removeBasketFood,
    required TResult Function(
            Map<int, List<FoodModel>?>? basketMaps, int? tableNumber)
        removeAllFood,
  }) {
    return removeAllFood(basketMaps, tableNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FoodModel? food, int? tableNumber)? addBasketFood,
    TResult? Function(String? noteText, int? tableNumber)? addNotes,
    TResult? Function(FoodModel? food, int? tableNumber)? removeBasketFood,
    TResult? Function(Map<int, List<FoodModel>?>? basketMaps, int? tableNumber)?
        removeAllFood,
  }) {
    return removeAllFood?.call(basketMaps, tableNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FoodModel? food, int? tableNumber)? addBasketFood,
    TResult Function(String? noteText, int? tableNumber)? addNotes,
    TResult Function(FoodModel? food, int? tableNumber)? removeBasketFood,
    TResult Function(Map<int, List<FoodModel>?>? basketMaps, int? tableNumber)?
        removeAllFood,
    required TResult orElse(),
  }) {
    if (removeAllFood != null) {
      return removeAllFood(basketMaps, tableNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddBasketFood value) addBasketFood,
    required TResult Function(_AddNotes value) addNotes,
    required TResult Function(_RemoveBasketFood value) removeBasketFood,
    required TResult Function(_RemoveAllFood value) removeAllFood,
  }) {
    return removeAllFood(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddBasketFood value)? addBasketFood,
    TResult? Function(_AddNotes value)? addNotes,
    TResult? Function(_RemoveBasketFood value)? removeBasketFood,
    TResult? Function(_RemoveAllFood value)? removeAllFood,
  }) {
    return removeAllFood?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddBasketFood value)? addBasketFood,
    TResult Function(_AddNotes value)? addNotes,
    TResult Function(_RemoveBasketFood value)? removeBasketFood,
    TResult Function(_RemoveAllFood value)? removeAllFood,
    required TResult orElse(),
  }) {
    if (removeAllFood != null) {
      return removeAllFood(this);
    }
    return orElse();
  }
}

abstract class _RemoveAllFood implements FoodBasketEvent {
  const factory _RemoveAllFood(final Map<int, List<FoodModel>?>? basketMaps,
      final int? tableNumber) = _$RemoveAllFoodImpl;

  Map<int, List<FoodModel>?>? get basketMaps;
  @override
  int? get tableNumber;
  @override
  @JsonKey(ignore: true)
  _$$RemoveAllFoodImplCopyWith<_$RemoveAllFoodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FoodBasketState {
  FoodBasketStatus get status => throw _privateConstructorUsedError;
  Map<int, List<FoodModel>?>? get basketMap =>
      throw _privateConstructorUsedError;
  String? get noteText => throw _privateConstructorUsedError;
  int? get tableNumber => throw _privateConstructorUsedError;

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
  $Res call(
      {FoodBasketStatus status,
      Map<int, List<FoodModel>?>? basketMap,
      String? noteText,
      int? tableNumber});
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
    Object? basketMap = freezed,
    Object? noteText = freezed,
    Object? tableNumber = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FoodBasketStatus,
      basketMap: freezed == basketMap
          ? _value.basketMap
          : basketMap // ignore: cast_nullable_to_non_nullable
              as Map<int, List<FoodModel>?>?,
      noteText: freezed == noteText
          ? _value.noteText
          : noteText // ignore: cast_nullable_to_non_nullable
              as String?,
      tableNumber: freezed == tableNumber
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as int?,
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
  $Res call(
      {FoodBasketStatus status,
      Map<int, List<FoodModel>?>? basketMap,
      String? noteText,
      int? tableNumber});
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
    Object? basketMap = freezed,
    Object? noteText = freezed,
    Object? tableNumber = freezed,
  }) {
    return _then(_$FoodBasketStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FoodBasketStatus,
      basketMap: freezed == basketMap
          ? _value._basketMap
          : basketMap // ignore: cast_nullable_to_non_nullable
              as Map<int, List<FoodModel>?>?,
      noteText: freezed == noteText
          ? _value.noteText
          : noteText // ignore: cast_nullable_to_non_nullable
              as String?,
      tableNumber: freezed == tableNumber
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$FoodBasketStateImpl implements _FoodBasketState {
  const _$FoodBasketStateImpl(
      {this.status = FoodBasketStatus.initial,
      final Map<int, List<FoodModel>?>? basketMap,
      this.noteText,
      this.tableNumber})
      : _basketMap = basketMap;

  @override
  @JsonKey()
  final FoodBasketStatus status;
  final Map<int, List<FoodModel>?>? _basketMap;
  @override
  Map<int, List<FoodModel>?>? get basketMap {
    final value = _basketMap;
    if (value == null) return null;
    if (_basketMap is EqualUnmodifiableMapView) return _basketMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? noteText;
  @override
  final int? tableNumber;

  @override
  String toString() {
    return 'FoodBasketState(status: $status, basketMap: $basketMap, noteText: $noteText, tableNumber: $tableNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodBasketStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._basketMap, _basketMap) &&
            (identical(other.noteText, noteText) ||
                other.noteText == noteText) &&
            (identical(other.tableNumber, tableNumber) ||
                other.tableNumber == tableNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_basketMap), noteText, tableNumber);

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
      final Map<int, List<FoodModel>?>? basketMap,
      final String? noteText,
      final int? tableNumber}) = _$FoodBasketStateImpl;

  @override
  FoodBasketStatus get status;
  @override
  Map<int, List<FoodModel>?>? get basketMap;
  @override
  String? get noteText;
  @override
  int? get tableNumber;
  @override
  @JsonKey(ignore: true)
  _$$FoodBasketStateImplCopyWith<_$FoodBasketStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
