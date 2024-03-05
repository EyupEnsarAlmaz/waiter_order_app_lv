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
    required TResult Function(ProductModel? item, int? tableNumber)
        addBasketItem,
    required TResult Function(ProductModel? item, int? tableNumber)
        updateBasketItem,
    required TResult Function(String? noteText, int? tableNumber) addNotes,
    required TResult Function(ProductModel? item, int? tableNumber)
        removeItemFromBasket,
    required TResult Function(
            Map<int, List<ProductModel>?>? basketMaps, int? tableNumber)
        removeAllItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel? item, int? tableNumber)? addBasketItem,
    TResult? Function(ProductModel? item, int? tableNumber)? updateBasketItem,
    TResult? Function(String? noteText, int? tableNumber)? addNotes,
    TResult? Function(ProductModel? item, int? tableNumber)?
        removeItemFromBasket,
    TResult? Function(
            Map<int, List<ProductModel>?>? basketMaps, int? tableNumber)?
        removeAllItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel? item, int? tableNumber)? addBasketItem,
    TResult Function(ProductModel? item, int? tableNumber)? updateBasketItem,
    TResult Function(String? noteText, int? tableNumber)? addNotes,
    TResult Function(ProductModel? item, int? tableNumber)?
        removeItemFromBasket,
    TResult Function(
            Map<int, List<ProductModel>?>? basketMaps, int? tableNumber)?
        removeAllItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddBasketItem value) addBasketItem,
    required TResult Function(_UpdateBasketItem value) updateBasketItem,
    required TResult Function(_AddNotes value) addNotes,
    required TResult Function(_RemoveBasketItem value) removeItemFromBasket,
    required TResult Function(_RemoveAllItem value) removeAllItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddBasketItem value)? addBasketItem,
    TResult? Function(_UpdateBasketItem value)? updateBasketItem,
    TResult? Function(_AddNotes value)? addNotes,
    TResult? Function(_RemoveBasketItem value)? removeItemFromBasket,
    TResult? Function(_RemoveAllItem value)? removeAllItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddBasketItem value)? addBasketItem,
    TResult Function(_UpdateBasketItem value)? updateBasketItem,
    TResult Function(_AddNotes value)? addNotes,
    TResult Function(_RemoveBasketItem value)? removeItemFromBasket,
    TResult Function(_RemoveAllItem value)? removeAllItem,
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
abstract class _$$AddBasketItemImplCopyWith<$Res>
    implements $FoodBasketEventCopyWith<$Res> {
  factory _$$AddBasketItemImplCopyWith(
          _$AddBasketItemImpl value, $Res Function(_$AddBasketItemImpl) then) =
      __$$AddBasketItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductModel? item, int? tableNumber});
}

/// @nodoc
class __$$AddBasketItemImplCopyWithImpl<$Res>
    extends _$FoodBasketEventCopyWithImpl<$Res, _$AddBasketItemImpl>
    implements _$$AddBasketItemImplCopyWith<$Res> {
  __$$AddBasketItemImplCopyWithImpl(
      _$AddBasketItemImpl _value, $Res Function(_$AddBasketItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = freezed,
    Object? tableNumber = freezed,
  }) {
    return _then(_$AddBasketItemImpl(
      freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      freezed == tableNumber
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$AddBasketItemImpl implements _AddBasketItem {
  const _$AddBasketItemImpl(this.item, this.tableNumber);

  @override
  final ProductModel? item;
  @override
  final int? tableNumber;

  @override
  String toString() {
    return 'FoodBasketEvent.addBasketItem(item: $item, tableNumber: $tableNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddBasketItemImpl &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.tableNumber, tableNumber) ||
                other.tableNumber == tableNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item, tableNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddBasketItemImplCopyWith<_$AddBasketItemImpl> get copyWith =>
      __$$AddBasketItemImplCopyWithImpl<_$AddBasketItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductModel? item, int? tableNumber)
        addBasketItem,
    required TResult Function(ProductModel? item, int? tableNumber)
        updateBasketItem,
    required TResult Function(String? noteText, int? tableNumber) addNotes,
    required TResult Function(ProductModel? item, int? tableNumber)
        removeItemFromBasket,
    required TResult Function(
            Map<int, List<ProductModel>?>? basketMaps, int? tableNumber)
        removeAllItem,
  }) {
    return addBasketItem(item, tableNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel? item, int? tableNumber)? addBasketItem,
    TResult? Function(ProductModel? item, int? tableNumber)? updateBasketItem,
    TResult? Function(String? noteText, int? tableNumber)? addNotes,
    TResult? Function(ProductModel? item, int? tableNumber)?
        removeItemFromBasket,
    TResult? Function(
            Map<int, List<ProductModel>?>? basketMaps, int? tableNumber)?
        removeAllItem,
  }) {
    return addBasketItem?.call(item, tableNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel? item, int? tableNumber)? addBasketItem,
    TResult Function(ProductModel? item, int? tableNumber)? updateBasketItem,
    TResult Function(String? noteText, int? tableNumber)? addNotes,
    TResult Function(ProductModel? item, int? tableNumber)?
        removeItemFromBasket,
    TResult Function(
            Map<int, List<ProductModel>?>? basketMaps, int? tableNumber)?
        removeAllItem,
    required TResult orElse(),
  }) {
    if (addBasketItem != null) {
      return addBasketItem(item, tableNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddBasketItem value) addBasketItem,
    required TResult Function(_UpdateBasketItem value) updateBasketItem,
    required TResult Function(_AddNotes value) addNotes,
    required TResult Function(_RemoveBasketItem value) removeItemFromBasket,
    required TResult Function(_RemoveAllItem value) removeAllItem,
  }) {
    return addBasketItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddBasketItem value)? addBasketItem,
    TResult? Function(_UpdateBasketItem value)? updateBasketItem,
    TResult? Function(_AddNotes value)? addNotes,
    TResult? Function(_RemoveBasketItem value)? removeItemFromBasket,
    TResult? Function(_RemoveAllItem value)? removeAllItem,
  }) {
    return addBasketItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddBasketItem value)? addBasketItem,
    TResult Function(_UpdateBasketItem value)? updateBasketItem,
    TResult Function(_AddNotes value)? addNotes,
    TResult Function(_RemoveBasketItem value)? removeItemFromBasket,
    TResult Function(_RemoveAllItem value)? removeAllItem,
    required TResult orElse(),
  }) {
    if (addBasketItem != null) {
      return addBasketItem(this);
    }
    return orElse();
  }
}

abstract class _AddBasketItem implements FoodBasketEvent {
  const factory _AddBasketItem(
      final ProductModel? item, final int? tableNumber) = _$AddBasketItemImpl;

  ProductModel? get item;
  @override
  int? get tableNumber;
  @override
  @JsonKey(ignore: true)
  _$$AddBasketItemImplCopyWith<_$AddBasketItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateBasketItemImplCopyWith<$Res>
    implements $FoodBasketEventCopyWith<$Res> {
  factory _$$UpdateBasketItemImplCopyWith(_$UpdateBasketItemImpl value,
          $Res Function(_$UpdateBasketItemImpl) then) =
      __$$UpdateBasketItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductModel? item, int? tableNumber});
}

/// @nodoc
class __$$UpdateBasketItemImplCopyWithImpl<$Res>
    extends _$FoodBasketEventCopyWithImpl<$Res, _$UpdateBasketItemImpl>
    implements _$$UpdateBasketItemImplCopyWith<$Res> {
  __$$UpdateBasketItemImplCopyWithImpl(_$UpdateBasketItemImpl _value,
      $Res Function(_$UpdateBasketItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = freezed,
    Object? tableNumber = freezed,
  }) {
    return _then(_$UpdateBasketItemImpl(
      freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      freezed == tableNumber
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$UpdateBasketItemImpl implements _UpdateBasketItem {
  const _$UpdateBasketItemImpl(this.item, this.tableNumber);

  @override
  final ProductModel? item;
  @override
  final int? tableNumber;

  @override
  String toString() {
    return 'FoodBasketEvent.updateBasketItem(item: $item, tableNumber: $tableNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateBasketItemImpl &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.tableNumber, tableNumber) ||
                other.tableNumber == tableNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item, tableNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateBasketItemImplCopyWith<_$UpdateBasketItemImpl> get copyWith =>
      __$$UpdateBasketItemImplCopyWithImpl<_$UpdateBasketItemImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductModel? item, int? tableNumber)
        addBasketItem,
    required TResult Function(ProductModel? item, int? tableNumber)
        updateBasketItem,
    required TResult Function(String? noteText, int? tableNumber) addNotes,
    required TResult Function(ProductModel? item, int? tableNumber)
        removeItemFromBasket,
    required TResult Function(
            Map<int, List<ProductModel>?>? basketMaps, int? tableNumber)
        removeAllItem,
  }) {
    return updateBasketItem(item, tableNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel? item, int? tableNumber)? addBasketItem,
    TResult? Function(ProductModel? item, int? tableNumber)? updateBasketItem,
    TResult? Function(String? noteText, int? tableNumber)? addNotes,
    TResult? Function(ProductModel? item, int? tableNumber)?
        removeItemFromBasket,
    TResult? Function(
            Map<int, List<ProductModel>?>? basketMaps, int? tableNumber)?
        removeAllItem,
  }) {
    return updateBasketItem?.call(item, tableNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel? item, int? tableNumber)? addBasketItem,
    TResult Function(ProductModel? item, int? tableNumber)? updateBasketItem,
    TResult Function(String? noteText, int? tableNumber)? addNotes,
    TResult Function(ProductModel? item, int? tableNumber)?
        removeItemFromBasket,
    TResult Function(
            Map<int, List<ProductModel>?>? basketMaps, int? tableNumber)?
        removeAllItem,
    required TResult orElse(),
  }) {
    if (updateBasketItem != null) {
      return updateBasketItem(item, tableNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddBasketItem value) addBasketItem,
    required TResult Function(_UpdateBasketItem value) updateBasketItem,
    required TResult Function(_AddNotes value) addNotes,
    required TResult Function(_RemoveBasketItem value) removeItemFromBasket,
    required TResult Function(_RemoveAllItem value) removeAllItem,
  }) {
    return updateBasketItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddBasketItem value)? addBasketItem,
    TResult? Function(_UpdateBasketItem value)? updateBasketItem,
    TResult? Function(_AddNotes value)? addNotes,
    TResult? Function(_RemoveBasketItem value)? removeItemFromBasket,
    TResult? Function(_RemoveAllItem value)? removeAllItem,
  }) {
    return updateBasketItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddBasketItem value)? addBasketItem,
    TResult Function(_UpdateBasketItem value)? updateBasketItem,
    TResult Function(_AddNotes value)? addNotes,
    TResult Function(_RemoveBasketItem value)? removeItemFromBasket,
    TResult Function(_RemoveAllItem value)? removeAllItem,
    required TResult orElse(),
  }) {
    if (updateBasketItem != null) {
      return updateBasketItem(this);
    }
    return orElse();
  }
}

abstract class _UpdateBasketItem implements FoodBasketEvent {
  const factory _UpdateBasketItem(
          final ProductModel? item, final int? tableNumber) =
      _$UpdateBasketItemImpl;

  ProductModel? get item;
  @override
  int? get tableNumber;
  @override
  @JsonKey(ignore: true)
  _$$UpdateBasketItemImplCopyWith<_$UpdateBasketItemImpl> get copyWith =>
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
    required TResult Function(ProductModel? item, int? tableNumber)
        addBasketItem,
    required TResult Function(ProductModel? item, int? tableNumber)
        updateBasketItem,
    required TResult Function(String? noteText, int? tableNumber) addNotes,
    required TResult Function(ProductModel? item, int? tableNumber)
        removeItemFromBasket,
    required TResult Function(
            Map<int, List<ProductModel>?>? basketMaps, int? tableNumber)
        removeAllItem,
  }) {
    return addNotes(noteText, tableNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel? item, int? tableNumber)? addBasketItem,
    TResult? Function(ProductModel? item, int? tableNumber)? updateBasketItem,
    TResult? Function(String? noteText, int? tableNumber)? addNotes,
    TResult? Function(ProductModel? item, int? tableNumber)?
        removeItemFromBasket,
    TResult? Function(
            Map<int, List<ProductModel>?>? basketMaps, int? tableNumber)?
        removeAllItem,
  }) {
    return addNotes?.call(noteText, tableNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel? item, int? tableNumber)? addBasketItem,
    TResult Function(ProductModel? item, int? tableNumber)? updateBasketItem,
    TResult Function(String? noteText, int? tableNumber)? addNotes,
    TResult Function(ProductModel? item, int? tableNumber)?
        removeItemFromBasket,
    TResult Function(
            Map<int, List<ProductModel>?>? basketMaps, int? tableNumber)?
        removeAllItem,
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
    required TResult Function(_AddBasketItem value) addBasketItem,
    required TResult Function(_UpdateBasketItem value) updateBasketItem,
    required TResult Function(_AddNotes value) addNotes,
    required TResult Function(_RemoveBasketItem value) removeItemFromBasket,
    required TResult Function(_RemoveAllItem value) removeAllItem,
  }) {
    return addNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddBasketItem value)? addBasketItem,
    TResult? Function(_UpdateBasketItem value)? updateBasketItem,
    TResult? Function(_AddNotes value)? addNotes,
    TResult? Function(_RemoveBasketItem value)? removeItemFromBasket,
    TResult? Function(_RemoveAllItem value)? removeAllItem,
  }) {
    return addNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddBasketItem value)? addBasketItem,
    TResult Function(_UpdateBasketItem value)? updateBasketItem,
    TResult Function(_AddNotes value)? addNotes,
    TResult Function(_RemoveBasketItem value)? removeItemFromBasket,
    TResult Function(_RemoveAllItem value)? removeAllItem,
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
abstract class _$$RemoveBasketItemImplCopyWith<$Res>
    implements $FoodBasketEventCopyWith<$Res> {
  factory _$$RemoveBasketItemImplCopyWith(_$RemoveBasketItemImpl value,
          $Res Function(_$RemoveBasketItemImpl) then) =
      __$$RemoveBasketItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductModel? item, int? tableNumber});
}

/// @nodoc
class __$$RemoveBasketItemImplCopyWithImpl<$Res>
    extends _$FoodBasketEventCopyWithImpl<$Res, _$RemoveBasketItemImpl>
    implements _$$RemoveBasketItemImplCopyWith<$Res> {
  __$$RemoveBasketItemImplCopyWithImpl(_$RemoveBasketItemImpl _value,
      $Res Function(_$RemoveBasketItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = freezed,
    Object? tableNumber = freezed,
  }) {
    return _then(_$RemoveBasketItemImpl(
      freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      freezed == tableNumber
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$RemoveBasketItemImpl implements _RemoveBasketItem {
  const _$RemoveBasketItemImpl(this.item, this.tableNumber);

  @override
  final ProductModel? item;
  @override
  final int? tableNumber;

  @override
  String toString() {
    return 'FoodBasketEvent.removeItemFromBasket(item: $item, tableNumber: $tableNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveBasketItemImpl &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.tableNumber, tableNumber) ||
                other.tableNumber == tableNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item, tableNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveBasketItemImplCopyWith<_$RemoveBasketItemImpl> get copyWith =>
      __$$RemoveBasketItemImplCopyWithImpl<_$RemoveBasketItemImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductModel? item, int? tableNumber)
        addBasketItem,
    required TResult Function(ProductModel? item, int? tableNumber)
        updateBasketItem,
    required TResult Function(String? noteText, int? tableNumber) addNotes,
    required TResult Function(ProductModel? item, int? tableNumber)
        removeItemFromBasket,
    required TResult Function(
            Map<int, List<ProductModel>?>? basketMaps, int? tableNumber)
        removeAllItem,
  }) {
    return removeItemFromBasket(item, tableNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel? item, int? tableNumber)? addBasketItem,
    TResult? Function(ProductModel? item, int? tableNumber)? updateBasketItem,
    TResult? Function(String? noteText, int? tableNumber)? addNotes,
    TResult? Function(ProductModel? item, int? tableNumber)?
        removeItemFromBasket,
    TResult? Function(
            Map<int, List<ProductModel>?>? basketMaps, int? tableNumber)?
        removeAllItem,
  }) {
    return removeItemFromBasket?.call(item, tableNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel? item, int? tableNumber)? addBasketItem,
    TResult Function(ProductModel? item, int? tableNumber)? updateBasketItem,
    TResult Function(String? noteText, int? tableNumber)? addNotes,
    TResult Function(ProductModel? item, int? tableNumber)?
        removeItemFromBasket,
    TResult Function(
            Map<int, List<ProductModel>?>? basketMaps, int? tableNumber)?
        removeAllItem,
    required TResult orElse(),
  }) {
    if (removeItemFromBasket != null) {
      return removeItemFromBasket(item, tableNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddBasketItem value) addBasketItem,
    required TResult Function(_UpdateBasketItem value) updateBasketItem,
    required TResult Function(_AddNotes value) addNotes,
    required TResult Function(_RemoveBasketItem value) removeItemFromBasket,
    required TResult Function(_RemoveAllItem value) removeAllItem,
  }) {
    return removeItemFromBasket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddBasketItem value)? addBasketItem,
    TResult? Function(_UpdateBasketItem value)? updateBasketItem,
    TResult? Function(_AddNotes value)? addNotes,
    TResult? Function(_RemoveBasketItem value)? removeItemFromBasket,
    TResult? Function(_RemoveAllItem value)? removeAllItem,
  }) {
    return removeItemFromBasket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddBasketItem value)? addBasketItem,
    TResult Function(_UpdateBasketItem value)? updateBasketItem,
    TResult Function(_AddNotes value)? addNotes,
    TResult Function(_RemoveBasketItem value)? removeItemFromBasket,
    TResult Function(_RemoveAllItem value)? removeAllItem,
    required TResult orElse(),
  }) {
    if (removeItemFromBasket != null) {
      return removeItemFromBasket(this);
    }
    return orElse();
  }
}

abstract class _RemoveBasketItem implements FoodBasketEvent {
  const factory _RemoveBasketItem(
          final ProductModel? item, final int? tableNumber) =
      _$RemoveBasketItemImpl;

  ProductModel? get item;
  @override
  int? get tableNumber;
  @override
  @JsonKey(ignore: true)
  _$$RemoveBasketItemImplCopyWith<_$RemoveBasketItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveAllItemImplCopyWith<$Res>
    implements $FoodBasketEventCopyWith<$Res> {
  factory _$$RemoveAllItemImplCopyWith(
          _$RemoveAllItemImpl value, $Res Function(_$RemoveAllItemImpl) then) =
      __$$RemoveAllItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<int, List<ProductModel>?>? basketMaps, int? tableNumber});
}

/// @nodoc
class __$$RemoveAllItemImplCopyWithImpl<$Res>
    extends _$FoodBasketEventCopyWithImpl<$Res, _$RemoveAllItemImpl>
    implements _$$RemoveAllItemImplCopyWith<$Res> {
  __$$RemoveAllItemImplCopyWithImpl(
      _$RemoveAllItemImpl _value, $Res Function(_$RemoveAllItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basketMaps = freezed,
    Object? tableNumber = freezed,
  }) {
    return _then(_$RemoveAllItemImpl(
      freezed == basketMaps
          ? _value._basketMaps
          : basketMaps // ignore: cast_nullable_to_non_nullable
              as Map<int, List<ProductModel>?>?,
      freezed == tableNumber
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$RemoveAllItemImpl implements _RemoveAllItem {
  const _$RemoveAllItemImpl(
      final Map<int, List<ProductModel>?>? basketMaps, this.tableNumber)
      : _basketMaps = basketMaps;

  final Map<int, List<ProductModel>?>? _basketMaps;
  @override
  Map<int, List<ProductModel>?>? get basketMaps {
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
    return 'FoodBasketEvent.removeAllItem(basketMaps: $basketMaps, tableNumber: $tableNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveAllItemImpl &&
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
  _$$RemoveAllItemImplCopyWith<_$RemoveAllItemImpl> get copyWith =>
      __$$RemoveAllItemImplCopyWithImpl<_$RemoveAllItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductModel? item, int? tableNumber)
        addBasketItem,
    required TResult Function(ProductModel? item, int? tableNumber)
        updateBasketItem,
    required TResult Function(String? noteText, int? tableNumber) addNotes,
    required TResult Function(ProductModel? item, int? tableNumber)
        removeItemFromBasket,
    required TResult Function(
            Map<int, List<ProductModel>?>? basketMaps, int? tableNumber)
        removeAllItem,
  }) {
    return removeAllItem(basketMaps, tableNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel? item, int? tableNumber)? addBasketItem,
    TResult? Function(ProductModel? item, int? tableNumber)? updateBasketItem,
    TResult? Function(String? noteText, int? tableNumber)? addNotes,
    TResult? Function(ProductModel? item, int? tableNumber)?
        removeItemFromBasket,
    TResult? Function(
            Map<int, List<ProductModel>?>? basketMaps, int? tableNumber)?
        removeAllItem,
  }) {
    return removeAllItem?.call(basketMaps, tableNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel? item, int? tableNumber)? addBasketItem,
    TResult Function(ProductModel? item, int? tableNumber)? updateBasketItem,
    TResult Function(String? noteText, int? tableNumber)? addNotes,
    TResult Function(ProductModel? item, int? tableNumber)?
        removeItemFromBasket,
    TResult Function(
            Map<int, List<ProductModel>?>? basketMaps, int? tableNumber)?
        removeAllItem,
    required TResult orElse(),
  }) {
    if (removeAllItem != null) {
      return removeAllItem(basketMaps, tableNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddBasketItem value) addBasketItem,
    required TResult Function(_UpdateBasketItem value) updateBasketItem,
    required TResult Function(_AddNotes value) addNotes,
    required TResult Function(_RemoveBasketItem value) removeItemFromBasket,
    required TResult Function(_RemoveAllItem value) removeAllItem,
  }) {
    return removeAllItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddBasketItem value)? addBasketItem,
    TResult? Function(_UpdateBasketItem value)? updateBasketItem,
    TResult? Function(_AddNotes value)? addNotes,
    TResult? Function(_RemoveBasketItem value)? removeItemFromBasket,
    TResult? Function(_RemoveAllItem value)? removeAllItem,
  }) {
    return removeAllItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddBasketItem value)? addBasketItem,
    TResult Function(_UpdateBasketItem value)? updateBasketItem,
    TResult Function(_AddNotes value)? addNotes,
    TResult Function(_RemoveBasketItem value)? removeItemFromBasket,
    TResult Function(_RemoveAllItem value)? removeAllItem,
    required TResult orElse(),
  }) {
    if (removeAllItem != null) {
      return removeAllItem(this);
    }
    return orElse();
  }
}

abstract class _RemoveAllItem implements FoodBasketEvent {
  const factory _RemoveAllItem(final Map<int, List<ProductModel>?>? basketMaps,
      final int? tableNumber) = _$RemoveAllItemImpl;

  Map<int, List<ProductModel>?>? get basketMaps;
  @override
  int? get tableNumber;
  @override
  @JsonKey(ignore: true)
  _$$RemoveAllItemImplCopyWith<_$RemoveAllItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FoodBasketState {
  FoodBasketStatus get status => throw _privateConstructorUsedError;
  Map<int, List<ProductModel>?>? get basketMap =>
      throw _privateConstructorUsedError;
  String? get noteText => throw _privateConstructorUsedError;
  int? get tableNumber => throw _privateConstructorUsedError;
  Map<String, int>? get itemCountMap => throw _privateConstructorUsedError;

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
      Map<int, List<ProductModel>?>? basketMap,
      String? noteText,
      int? tableNumber,
      Map<String, int>? itemCountMap});
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
    Object? itemCountMap = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FoodBasketStatus,
      basketMap: freezed == basketMap
          ? _value.basketMap
          : basketMap // ignore: cast_nullable_to_non_nullable
              as Map<int, List<ProductModel>?>?,
      noteText: freezed == noteText
          ? _value.noteText
          : noteText // ignore: cast_nullable_to_non_nullable
              as String?,
      tableNumber: freezed == tableNumber
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      itemCountMap: freezed == itemCountMap
          ? _value.itemCountMap
          : itemCountMap // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
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
      Map<int, List<ProductModel>?>? basketMap,
      String? noteText,
      int? tableNumber,
      Map<String, int>? itemCountMap});
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
    Object? itemCountMap = freezed,
  }) {
    return _then(_$FoodBasketStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FoodBasketStatus,
      basketMap: freezed == basketMap
          ? _value._basketMap
          : basketMap // ignore: cast_nullable_to_non_nullable
              as Map<int, List<ProductModel>?>?,
      noteText: freezed == noteText
          ? _value.noteText
          : noteText // ignore: cast_nullable_to_non_nullable
              as String?,
      tableNumber: freezed == tableNumber
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      itemCountMap: freezed == itemCountMap
          ? _value._itemCountMap
          : itemCountMap // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
    ));
  }
}

/// @nodoc

class _$FoodBasketStateImpl implements _FoodBasketState {
  const _$FoodBasketStateImpl(
      {this.status = FoodBasketStatus.initial,
      final Map<int, List<ProductModel>?>? basketMap,
      this.noteText,
      this.tableNumber,
      final Map<String, int>? itemCountMap})
      : _basketMap = basketMap,
        _itemCountMap = itemCountMap;

  @override
  @JsonKey()
  final FoodBasketStatus status;
  final Map<int, List<ProductModel>?>? _basketMap;
  @override
  Map<int, List<ProductModel>?>? get basketMap {
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
  final Map<String, int>? _itemCountMap;
  @override
  Map<String, int>? get itemCountMap {
    final value = _itemCountMap;
    if (value == null) return null;
    if (_itemCountMap is EqualUnmodifiableMapView) return _itemCountMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'FoodBasketState(status: $status, basketMap: $basketMap, noteText: $noteText, tableNumber: $tableNumber, itemCountMap: $itemCountMap)';
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
                other.tableNumber == tableNumber) &&
            const DeepCollectionEquality()
                .equals(other._itemCountMap, _itemCountMap));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_basketMap),
      noteText,
      tableNumber,
      const DeepCollectionEquality().hash(_itemCountMap));

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
      final Map<int, List<ProductModel>?>? basketMap,
      final String? noteText,
      final int? tableNumber,
      final Map<String, int>? itemCountMap}) = _$FoodBasketStateImpl;

  @override
  FoodBasketStatus get status;
  @override
  Map<int, List<ProductModel>?>? get basketMap;
  @override
  String? get noteText;
  @override
  int? get tableNumber;
  @override
  Map<String, int>? get itemCountMap;
  @override
  @JsonKey(ignore: true)
  _$$FoodBasketStateImplCopyWith<_$FoodBasketStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
