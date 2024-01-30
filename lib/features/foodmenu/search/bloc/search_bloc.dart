import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:waiter_order_app_lv/core/network/firestore/search_service/search_service.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/food_model.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchBlocStateEvent, SearchBlocState> {
  SearchBloc() : super(const SearchBlocState()) {
    on<_SearchFromFirestore>(_searchFromFirestore);
  }

  final _searchService = SearchService.shared;

  Future<void> _searchFromFirestore(
      _SearchFromFirestore event, Emitter emit) async {
    try {
      emit(state.copyWith(status: SearchStatus.loading));
      var queryList =
          await SearchService.shared.getFoodSuggestions(prefix: event.query!);
      if (queryList.isNotEmpty) {
        emit(
            state.copyWith(status: SearchStatus.success, queryList: queryList));
      }
    } catch (e) {
      emit(state.copyWith(status: SearchStatus.failure));
    }
  }
}
