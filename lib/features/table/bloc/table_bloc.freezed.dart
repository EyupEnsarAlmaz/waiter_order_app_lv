// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TableEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isTableOpen, int tableNumber) openTable,
    required TResult Function() getTable,
    required TResult Function(int tableNumber, bool isAway) isAway,
    required TResult Function(bool isTableOpen, int tableNumber, bool isAwway)
        closeTable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isTableOpen, int tableNumber)? openTable,
    TResult? Function()? getTable,
    TResult? Function(int tableNumber, bool isAway)? isAway,
    TResult? Function(bool isTableOpen, int tableNumber, bool isAwway)?
        closeTable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isTableOpen, int tableNumber)? openTable,
    TResult Function()? getTable,
    TResult Function(int tableNumber, bool isAway)? isAway,
    TResult Function(bool isTableOpen, int tableNumber, bool isAwway)?
        closeTable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenTable value) openTable,
    required TResult Function(_GetTable value) getTable,
    required TResult Function(_IsAway value) isAway,
    required TResult Function(_CloseTable value) closeTable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OpenTable value)? openTable,
    TResult? Function(_GetTable value)? getTable,
    TResult? Function(_IsAway value)? isAway,
    TResult? Function(_CloseTable value)? closeTable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenTable value)? openTable,
    TResult Function(_GetTable value)? getTable,
    TResult Function(_IsAway value)? isAway,
    TResult Function(_CloseTable value)? closeTable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableEventCopyWith<$Res> {
  factory $TableEventCopyWith(
          TableEvent value, $Res Function(TableEvent) then) =
      _$TableEventCopyWithImpl<$Res, TableEvent>;
}

/// @nodoc
class _$TableEventCopyWithImpl<$Res, $Val extends TableEvent>
    implements $TableEventCopyWith<$Res> {
  _$TableEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OpenTableImplCopyWith<$Res> {
  factory _$$OpenTableImplCopyWith(
          _$OpenTableImpl value, $Res Function(_$OpenTableImpl) then) =
      __$$OpenTableImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isTableOpen, int tableNumber});
}

/// @nodoc
class __$$OpenTableImplCopyWithImpl<$Res>
    extends _$TableEventCopyWithImpl<$Res, _$OpenTableImpl>
    implements _$$OpenTableImplCopyWith<$Res> {
  __$$OpenTableImplCopyWithImpl(
      _$OpenTableImpl _value, $Res Function(_$OpenTableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTableOpen = null,
    Object? tableNumber = null,
  }) {
    return _then(_$OpenTableImpl(
      null == isTableOpen
          ? _value.isTableOpen
          : isTableOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      null == tableNumber
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OpenTableImpl implements _OpenTable {
  const _$OpenTableImpl(this.isTableOpen, this.tableNumber);

  @override
  final bool isTableOpen;
  @override
  final int tableNumber;

  @override
  String toString() {
    return 'TableEvent.openTable(isTableOpen: $isTableOpen, tableNumber: $tableNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenTableImpl &&
            (identical(other.isTableOpen, isTableOpen) ||
                other.isTableOpen == isTableOpen) &&
            (identical(other.tableNumber, tableNumber) ||
                other.tableNumber == tableNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isTableOpen, tableNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenTableImplCopyWith<_$OpenTableImpl> get copyWith =>
      __$$OpenTableImplCopyWithImpl<_$OpenTableImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isTableOpen, int tableNumber) openTable,
    required TResult Function() getTable,
    required TResult Function(int tableNumber, bool isAway) isAway,
    required TResult Function(bool isTableOpen, int tableNumber, bool isAwway)
        closeTable,
  }) {
    return openTable(isTableOpen, tableNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isTableOpen, int tableNumber)? openTable,
    TResult? Function()? getTable,
    TResult? Function(int tableNumber, bool isAway)? isAway,
    TResult? Function(bool isTableOpen, int tableNumber, bool isAwway)?
        closeTable,
  }) {
    return openTable?.call(isTableOpen, tableNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isTableOpen, int tableNumber)? openTable,
    TResult Function()? getTable,
    TResult Function(int tableNumber, bool isAway)? isAway,
    TResult Function(bool isTableOpen, int tableNumber, bool isAwway)?
        closeTable,
    required TResult orElse(),
  }) {
    if (openTable != null) {
      return openTable(isTableOpen, tableNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenTable value) openTable,
    required TResult Function(_GetTable value) getTable,
    required TResult Function(_IsAway value) isAway,
    required TResult Function(_CloseTable value) closeTable,
  }) {
    return openTable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OpenTable value)? openTable,
    TResult? Function(_GetTable value)? getTable,
    TResult? Function(_IsAway value)? isAway,
    TResult? Function(_CloseTable value)? closeTable,
  }) {
    return openTable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenTable value)? openTable,
    TResult Function(_GetTable value)? getTable,
    TResult Function(_IsAway value)? isAway,
    TResult Function(_CloseTable value)? closeTable,
    required TResult orElse(),
  }) {
    if (openTable != null) {
      return openTable(this);
    }
    return orElse();
  }
}

abstract class _OpenTable implements TableEvent {
  const factory _OpenTable(final bool isTableOpen, final int tableNumber) =
      _$OpenTableImpl;

  bool get isTableOpen;
  int get tableNumber;
  @JsonKey(ignore: true)
  _$$OpenTableImplCopyWith<_$OpenTableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTableImplCopyWith<$Res> {
  factory _$$GetTableImplCopyWith(
          _$GetTableImpl value, $Res Function(_$GetTableImpl) then) =
      __$$GetTableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTableImplCopyWithImpl<$Res>
    extends _$TableEventCopyWithImpl<$Res, _$GetTableImpl>
    implements _$$GetTableImplCopyWith<$Res> {
  __$$GetTableImplCopyWithImpl(
      _$GetTableImpl _value, $Res Function(_$GetTableImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTableImpl implements _GetTable {
  const _$GetTableImpl();

  @override
  String toString() {
    return 'TableEvent.getTable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTableImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isTableOpen, int tableNumber) openTable,
    required TResult Function() getTable,
    required TResult Function(int tableNumber, bool isAway) isAway,
    required TResult Function(bool isTableOpen, int tableNumber, bool isAwway)
        closeTable,
  }) {
    return getTable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isTableOpen, int tableNumber)? openTable,
    TResult? Function()? getTable,
    TResult? Function(int tableNumber, bool isAway)? isAway,
    TResult? Function(bool isTableOpen, int tableNumber, bool isAwway)?
        closeTable,
  }) {
    return getTable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isTableOpen, int tableNumber)? openTable,
    TResult Function()? getTable,
    TResult Function(int tableNumber, bool isAway)? isAway,
    TResult Function(bool isTableOpen, int tableNumber, bool isAwway)?
        closeTable,
    required TResult orElse(),
  }) {
    if (getTable != null) {
      return getTable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenTable value) openTable,
    required TResult Function(_GetTable value) getTable,
    required TResult Function(_IsAway value) isAway,
    required TResult Function(_CloseTable value) closeTable,
  }) {
    return getTable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OpenTable value)? openTable,
    TResult? Function(_GetTable value)? getTable,
    TResult? Function(_IsAway value)? isAway,
    TResult? Function(_CloseTable value)? closeTable,
  }) {
    return getTable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenTable value)? openTable,
    TResult Function(_GetTable value)? getTable,
    TResult Function(_IsAway value)? isAway,
    TResult Function(_CloseTable value)? closeTable,
    required TResult orElse(),
  }) {
    if (getTable != null) {
      return getTable(this);
    }
    return orElse();
  }
}

abstract class _GetTable implements TableEvent {
  const factory _GetTable() = _$GetTableImpl;
}

/// @nodoc
abstract class _$$IsAwayImplCopyWith<$Res> {
  factory _$$IsAwayImplCopyWith(
          _$IsAwayImpl value, $Res Function(_$IsAwayImpl) then) =
      __$$IsAwayImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int tableNumber, bool isAway});
}

/// @nodoc
class __$$IsAwayImplCopyWithImpl<$Res>
    extends _$TableEventCopyWithImpl<$Res, _$IsAwayImpl>
    implements _$$IsAwayImplCopyWith<$Res> {
  __$$IsAwayImplCopyWithImpl(
      _$IsAwayImpl _value, $Res Function(_$IsAwayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tableNumber = null,
    Object? isAway = null,
  }) {
    return _then(_$IsAwayImpl(
      null == tableNumber
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as int,
      null == isAway
          ? _value.isAway
          : isAway // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$IsAwayImpl implements _IsAway {
  const _$IsAwayImpl(this.tableNumber, this.isAway);

  @override
  final int tableNumber;
  @override
  final bool isAway;

  @override
  String toString() {
    return 'TableEvent.isAway(tableNumber: $tableNumber, isAway: $isAway)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsAwayImpl &&
            (identical(other.tableNumber, tableNumber) ||
                other.tableNumber == tableNumber) &&
            (identical(other.isAway, isAway) || other.isAway == isAway));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tableNumber, isAway);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IsAwayImplCopyWith<_$IsAwayImpl> get copyWith =>
      __$$IsAwayImplCopyWithImpl<_$IsAwayImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isTableOpen, int tableNumber) openTable,
    required TResult Function() getTable,
    required TResult Function(int tableNumber, bool isAway) isAway,
    required TResult Function(bool isTableOpen, int tableNumber, bool isAwway)
        closeTable,
  }) {
    return isAway(tableNumber, this.isAway);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isTableOpen, int tableNumber)? openTable,
    TResult? Function()? getTable,
    TResult? Function(int tableNumber, bool isAway)? isAway,
    TResult? Function(bool isTableOpen, int tableNumber, bool isAwway)?
        closeTable,
  }) {
    return isAway?.call(tableNumber, this.isAway);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isTableOpen, int tableNumber)? openTable,
    TResult Function()? getTable,
    TResult Function(int tableNumber, bool isAway)? isAway,
    TResult Function(bool isTableOpen, int tableNumber, bool isAwway)?
        closeTable,
    required TResult orElse(),
  }) {
    if (isAway != null) {
      return isAway(tableNumber, this.isAway);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenTable value) openTable,
    required TResult Function(_GetTable value) getTable,
    required TResult Function(_IsAway value) isAway,
    required TResult Function(_CloseTable value) closeTable,
  }) {
    return isAway(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OpenTable value)? openTable,
    TResult? Function(_GetTable value)? getTable,
    TResult? Function(_IsAway value)? isAway,
    TResult? Function(_CloseTable value)? closeTable,
  }) {
    return isAway?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenTable value)? openTable,
    TResult Function(_GetTable value)? getTable,
    TResult Function(_IsAway value)? isAway,
    TResult Function(_CloseTable value)? closeTable,
    required TResult orElse(),
  }) {
    if (isAway != null) {
      return isAway(this);
    }
    return orElse();
  }
}

abstract class _IsAway implements TableEvent {
  const factory _IsAway(final int tableNumber, final bool isAway) =
      _$IsAwayImpl;

  int get tableNumber;
  bool get isAway;
  @JsonKey(ignore: true)
  _$$IsAwayImplCopyWith<_$IsAwayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CloseTableImplCopyWith<$Res> {
  factory _$$CloseTableImplCopyWith(
          _$CloseTableImpl value, $Res Function(_$CloseTableImpl) then) =
      __$$CloseTableImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isTableOpen, int tableNumber, bool isAwway});
}

/// @nodoc
class __$$CloseTableImplCopyWithImpl<$Res>
    extends _$TableEventCopyWithImpl<$Res, _$CloseTableImpl>
    implements _$$CloseTableImplCopyWith<$Res> {
  __$$CloseTableImplCopyWithImpl(
      _$CloseTableImpl _value, $Res Function(_$CloseTableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTableOpen = null,
    Object? tableNumber = null,
    Object? isAwway = null,
  }) {
    return _then(_$CloseTableImpl(
      null == isTableOpen
          ? _value.isTableOpen
          : isTableOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      null == tableNumber
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as int,
      null == isAwway
          ? _value.isAwway
          : isAwway // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CloseTableImpl implements _CloseTable {
  const _$CloseTableImpl(this.isTableOpen, this.tableNumber, this.isAwway);

  @override
  final bool isTableOpen;
  @override
  final int tableNumber;
  @override
  final bool isAwway;

  @override
  String toString() {
    return 'TableEvent.closeTable(isTableOpen: $isTableOpen, tableNumber: $tableNumber, isAwway: $isAwway)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CloseTableImpl &&
            (identical(other.isTableOpen, isTableOpen) ||
                other.isTableOpen == isTableOpen) &&
            (identical(other.tableNumber, tableNumber) ||
                other.tableNumber == tableNumber) &&
            (identical(other.isAwway, isAwway) || other.isAwway == isAwway));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isTableOpen, tableNumber, isAwway);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CloseTableImplCopyWith<_$CloseTableImpl> get copyWith =>
      __$$CloseTableImplCopyWithImpl<_$CloseTableImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isTableOpen, int tableNumber) openTable,
    required TResult Function() getTable,
    required TResult Function(int tableNumber, bool isAway) isAway,
    required TResult Function(bool isTableOpen, int tableNumber, bool isAwway)
        closeTable,
  }) {
    return closeTable(isTableOpen, tableNumber, isAwway);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isTableOpen, int tableNumber)? openTable,
    TResult? Function()? getTable,
    TResult? Function(int tableNumber, bool isAway)? isAway,
    TResult? Function(bool isTableOpen, int tableNumber, bool isAwway)?
        closeTable,
  }) {
    return closeTable?.call(isTableOpen, tableNumber, isAwway);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isTableOpen, int tableNumber)? openTable,
    TResult Function()? getTable,
    TResult Function(int tableNumber, bool isAway)? isAway,
    TResult Function(bool isTableOpen, int tableNumber, bool isAwway)?
        closeTable,
    required TResult orElse(),
  }) {
    if (closeTable != null) {
      return closeTable(isTableOpen, tableNumber, isAwway);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenTable value) openTable,
    required TResult Function(_GetTable value) getTable,
    required TResult Function(_IsAway value) isAway,
    required TResult Function(_CloseTable value) closeTable,
  }) {
    return closeTable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OpenTable value)? openTable,
    TResult? Function(_GetTable value)? getTable,
    TResult? Function(_IsAway value)? isAway,
    TResult? Function(_CloseTable value)? closeTable,
  }) {
    return closeTable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenTable value)? openTable,
    TResult Function(_GetTable value)? getTable,
    TResult Function(_IsAway value)? isAway,
    TResult Function(_CloseTable value)? closeTable,
    required TResult orElse(),
  }) {
    if (closeTable != null) {
      return closeTable(this);
    }
    return orElse();
  }
}

abstract class _CloseTable implements TableEvent {
  const factory _CloseTable(
          final bool isTableOpen, final int tableNumber, final bool isAwway) =
      _$CloseTableImpl;

  bool get isTableOpen;
  int get tableNumber;
  bool get isAwway;
  @JsonKey(ignore: true)
  _$$CloseTableImplCopyWith<_$CloseTableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TableState {
  TableStatus get status => throw _privateConstructorUsedError;
  List<TableModel>? get tableList => throw _privateConstructorUsedError;
  int? get tableNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TableStateCopyWith<TableState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableStateCopyWith<$Res> {
  factory $TableStateCopyWith(
          TableState value, $Res Function(TableState) then) =
      _$TableStateCopyWithImpl<$Res, TableState>;
  @useResult
  $Res call(
      {TableStatus status, List<TableModel>? tableList, int? tableNumber});
}

/// @nodoc
class _$TableStateCopyWithImpl<$Res, $Val extends TableState>
    implements $TableStateCopyWith<$Res> {
  _$TableStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? tableList = freezed,
    Object? tableNumber = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TableStatus,
      tableList: freezed == tableList
          ? _value.tableList
          : tableList // ignore: cast_nullable_to_non_nullable
              as List<TableModel>?,
      tableNumber: freezed == tableNumber
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TableStateImplCopyWith<$Res>
    implements $TableStateCopyWith<$Res> {
  factory _$$TableStateImplCopyWith(
          _$TableStateImpl value, $Res Function(_$TableStateImpl) then) =
      __$$TableStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TableStatus status, List<TableModel>? tableList, int? tableNumber});
}

/// @nodoc
class __$$TableStateImplCopyWithImpl<$Res>
    extends _$TableStateCopyWithImpl<$Res, _$TableStateImpl>
    implements _$$TableStateImplCopyWith<$Res> {
  __$$TableStateImplCopyWithImpl(
      _$TableStateImpl _value, $Res Function(_$TableStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? tableList = freezed,
    Object? tableNumber = freezed,
  }) {
    return _then(_$TableStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TableStatus,
      tableList: freezed == tableList
          ? _value._tableList
          : tableList // ignore: cast_nullable_to_non_nullable
              as List<TableModel>?,
      tableNumber: freezed == tableNumber
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$TableStateImpl implements _TableState {
  const _$TableStateImpl(
      {this.status = TableStatus.initial,
      final List<TableModel>? tableList,
      this.tableNumber})
      : _tableList = tableList;

  @override
  @JsonKey()
  final TableStatus status;
  final List<TableModel>? _tableList;
  @override
  List<TableModel>? get tableList {
    final value = _tableList;
    if (value == null) return null;
    if (_tableList is EqualUnmodifiableListView) return _tableList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? tableNumber;

  @override
  String toString() {
    return 'TableState(status: $status, tableList: $tableList, tableNumber: $tableNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._tableList, _tableList) &&
            (identical(other.tableNumber, tableNumber) ||
                other.tableNumber == tableNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_tableList), tableNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TableStateImplCopyWith<_$TableStateImpl> get copyWith =>
      __$$TableStateImplCopyWithImpl<_$TableStateImpl>(this, _$identity);
}

abstract class _TableState implements TableState {
  const factory _TableState(
      {final TableStatus status,
      final List<TableModel>? tableList,
      final int? tableNumber}) = _$TableStateImpl;

  @override
  TableStatus get status;
  @override
  List<TableModel>? get tableList;
  @override
  int? get tableNumber;
  @override
  @JsonKey(ignore: true)
  _$$TableStateImplCopyWith<_$TableStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
