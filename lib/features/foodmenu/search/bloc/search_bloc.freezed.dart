// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchBlocStateEvent {
  String? get query => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) searchFromFirestore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? searchFromFirestore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? searchFromFirestore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchFromFirestore value) searchFromFirestore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchFromFirestore value)? searchFromFirestore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchFromFirestore value)? searchFromFirestore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchBlocStateEventCopyWith<SearchBlocStateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchBlocStateEventCopyWith<$Res> {
  factory $SearchBlocStateEventCopyWith(SearchBlocStateEvent value,
          $Res Function(SearchBlocStateEvent) then) =
      _$SearchBlocStateEventCopyWithImpl<$Res, SearchBlocStateEvent>;
  @useResult
  $Res call({String? query});
}

/// @nodoc
class _$SearchBlocStateEventCopyWithImpl<$Res,
        $Val extends SearchBlocStateEvent>
    implements $SearchBlocStateEventCopyWith<$Res> {
  _$SearchBlocStateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_value.copyWith(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchFromFirestoreImplCopyWith<$Res>
    implements $SearchBlocStateEventCopyWith<$Res> {
  factory _$$SearchFromFirestoreImplCopyWith(_$SearchFromFirestoreImpl value,
          $Res Function(_$SearchFromFirestoreImpl) then) =
      __$$SearchFromFirestoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? query});
}

/// @nodoc
class __$$SearchFromFirestoreImplCopyWithImpl<$Res>
    extends _$SearchBlocStateEventCopyWithImpl<$Res, _$SearchFromFirestoreImpl>
    implements _$$SearchFromFirestoreImplCopyWith<$Res> {
  __$$SearchFromFirestoreImplCopyWithImpl(_$SearchFromFirestoreImpl _value,
      $Res Function(_$SearchFromFirestoreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$SearchFromFirestoreImpl(
      freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SearchFromFirestoreImpl implements _SearchFromFirestore {
  const _$SearchFromFirestoreImpl(this.query);

  @override
  final String? query;

  @override
  String toString() {
    return 'SearchBlocStateEvent.searchFromFirestore(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchFromFirestoreImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchFromFirestoreImplCopyWith<_$SearchFromFirestoreImpl> get copyWith =>
      __$$SearchFromFirestoreImplCopyWithImpl<_$SearchFromFirestoreImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) searchFromFirestore,
  }) {
    return searchFromFirestore(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? searchFromFirestore,
  }) {
    return searchFromFirestore?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? searchFromFirestore,
    required TResult orElse(),
  }) {
    if (searchFromFirestore != null) {
      return searchFromFirestore(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchFromFirestore value) searchFromFirestore,
  }) {
    return searchFromFirestore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchFromFirestore value)? searchFromFirestore,
  }) {
    return searchFromFirestore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchFromFirestore value)? searchFromFirestore,
    required TResult orElse(),
  }) {
    if (searchFromFirestore != null) {
      return searchFromFirestore(this);
    }
    return orElse();
  }
}

abstract class _SearchFromFirestore implements SearchBlocStateEvent {
  const factory _SearchFromFirestore(final String? query) =
      _$SearchFromFirestoreImpl;

  @override
  String? get query;
  @override
  @JsonKey(ignore: true)
  _$$SearchFromFirestoreImplCopyWith<_$SearchFromFirestoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchBlocState {
  SearchStatus get status => throw _privateConstructorUsedError;
  List<FoodModel>? get queryList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchBlocStateCopyWith<SearchBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchBlocStateCopyWith<$Res> {
  factory $SearchBlocStateCopyWith(
          SearchBlocState value, $Res Function(SearchBlocState) then) =
      _$SearchBlocStateCopyWithImpl<$Res, SearchBlocState>;
  @useResult
  $Res call({SearchStatus status, List<FoodModel>? queryList});
}

/// @nodoc
class _$SearchBlocStateCopyWithImpl<$Res, $Val extends SearchBlocState>
    implements $SearchBlocStateCopyWith<$Res> {
  _$SearchBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? queryList = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SearchStatus,
      queryList: freezed == queryList
          ? _value.queryList
          : queryList // ignore: cast_nullable_to_non_nullable
              as List<FoodModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchBlocStateImplCopyWith<$Res>
    implements $SearchBlocStateCopyWith<$Res> {
  factory _$$SearchBlocStateImplCopyWith(_$SearchBlocStateImpl value,
          $Res Function(_$SearchBlocStateImpl) then) =
      __$$SearchBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SearchStatus status, List<FoodModel>? queryList});
}

/// @nodoc
class __$$SearchBlocStateImplCopyWithImpl<$Res>
    extends _$SearchBlocStateCopyWithImpl<$Res, _$SearchBlocStateImpl>
    implements _$$SearchBlocStateImplCopyWith<$Res> {
  __$$SearchBlocStateImplCopyWithImpl(
      _$SearchBlocStateImpl _value, $Res Function(_$SearchBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? queryList = freezed,
  }) {
    return _then(_$SearchBlocStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SearchStatus,
      queryList: freezed == queryList
          ? _value._queryList
          : queryList // ignore: cast_nullable_to_non_nullable
              as List<FoodModel>?,
    ));
  }
}

/// @nodoc

class _$SearchBlocStateImpl implements _SearchBlocState {
  const _$SearchBlocStateImpl(
      {this.status = SearchStatus.initial, final List<FoodModel>? queryList})
      : _queryList = queryList;

  @override
  @JsonKey()
  final SearchStatus status;
  final List<FoodModel>? _queryList;
  @override
  List<FoodModel>? get queryList {
    final value = _queryList;
    if (value == null) return null;
    if (_queryList is EqualUnmodifiableListView) return _queryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchBlocState(status: $status, queryList: $queryList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchBlocStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._queryList, _queryList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_queryList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchBlocStateImplCopyWith<_$SearchBlocStateImpl> get copyWith =>
      __$$SearchBlocStateImplCopyWithImpl<_$SearchBlocStateImpl>(
          this, _$identity);
}

abstract class _SearchBlocState implements SearchBlocState {
  const factory _SearchBlocState(
      {final SearchStatus status,
      final List<FoodModel>? queryList}) = _$SearchBlocStateImpl;

  @override
  SearchStatus get status;
  @override
  List<FoodModel>? get queryList;
  @override
  @JsonKey(ignore: true)
  _$$SearchBlocStateImplCopyWith<_$SearchBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
