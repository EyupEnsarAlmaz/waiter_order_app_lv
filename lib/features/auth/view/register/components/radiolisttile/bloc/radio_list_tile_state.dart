part of 'radio_list_tile_bloc.dart';

enum Role { kitchen, waiter, manager }

@freezed
class RadioListTileState with _$RadioListTileState {
  const factory RadioListTileState({Role? choosenRole}) = _RegisterBlocState;
}
