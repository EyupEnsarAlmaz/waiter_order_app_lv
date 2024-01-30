part of 'search_bloc.dart';

enum SearchStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == SearchStatus.initial;
  bool get isLoading => this == SearchStatus.loading;
  bool get isSuccess => this == SearchStatus.success;
  bool get isFailure => this == SearchStatus.failure;
}

@freezed
class SearchBlocState with _$SearchBlocState {
  const factory SearchBlocState({
    @Default(SearchStatus.initial) SearchStatus status,
    List<FoodModel>? queryList,
  }) = _SearchBlocState;
}
