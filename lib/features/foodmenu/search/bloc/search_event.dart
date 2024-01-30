part of 'search_bloc.dart';

@freezed
class SearchBlocStateEvent with _$SearchBlocStateEvent {
  const factory SearchBlocStateEvent.searchFromFirestore(String? query) =
      _SearchFromFirestore;
}
